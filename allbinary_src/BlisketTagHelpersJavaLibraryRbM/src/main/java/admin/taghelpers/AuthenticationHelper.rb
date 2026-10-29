#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package admin.taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
# require "javax/servlet/jsp/tagext/TagSupport"
require "admin/taghelpers/TagHelper"

class AuthenticationHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :authenticated, :sessionUserName, :role, :timeout, :attemptsInteger

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @authenticated = nil
        @sessionUserName = nil
        @role = nil
        @timeout = nil
        @attemptsInteger = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor2(hashMap, pageContext)
        constructor2(hashMap, pageContext.getRequest())
    end
    

    def constructor2(hashMap, httpServletRequest)
        method(:initialize).super_method.call()
        initialize_fields
        @weblisketSession = WeblisketSession.new(hashMap, httpServletRequest)
        self.getFormData()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
            @logUtil.putF(self.outputSessionInfo(), self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def getFormData()
        @authenticated = @weblisketSession.getAuthentication()
        @sessionUserName = @weblisketSession.getUserName()
        @role = @weblisketSession.getRole()
        @attemptsInteger = @weblisketSession.getAttempts()
        @timeout = @weblisketSession.getTimeout()
    end
    

    # throws Exception
    def invalidateSession()
        begin
            @weblisketSession.clear()
            return TagSupport::EVAL_BODY_INCLUDE
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return nil
        end
    end
    

    def isSessionOld()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            sessionTimout = @role.getSessionTimeout()
            calendar = Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - sessionTimout
            if timeFirst > timeCreated
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Session Is Old - Timeout: ")
                    stringBuffer.appendlong(sessionTimout)
                    stringBuffer.append(" Eval: ")
                    stringBuffer.appendlong(timeFirst)
                    stringBuffer.append(" > ")
                    stringBuffer.appendlong(timeCreated)
                    @logUtil.putF(stringBuffer.to_s, self, "isSessionOld()")
                end
                return true
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                @logUtil.putF("Role Is Not In Session", self, "isSessionOld()")
            end
        end
        return self.isRarelyUsedSession()
    end
    

    def isRarelyUsedSession()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            lastAccess = @weblisketSession.getLastAccessedTime()
            inactivityAllowed = @role.getSessionInactivityTimeout()
            calendar = Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - lastAccess
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Session Is Rarely Used - Timeout: ")
                stringBuffer.appendlong(lastAccess)
                stringBuffer.append(" Eval: ")
                stringBuffer.appendlong(timeFirst)
                stringBuffer.append(" > ")
                stringBuffer.appendlong(inactivityAllowed)
                @logUtil.putF(stringBuffer.to_s, self, "isRarelyUsedSession()")
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                @logUtil.putF("Role Is Not In Session", self, "isRarelyUsedSession()")
            end
        end
        return false
    end
    

    def validRole()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Trying New login<p/>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set valid role"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validRole()", e)
            end
            return error
        end
    end
    

    def invalidRole()
        begin
            @weblisketSession.setAuthenticated(false)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Sorry your username and password is invalid on this page. ")
            stringBuffer.append("Trying New login<p/>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set role invalid"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidRole()", e)
            end
            return error
        end
    end
    

    # throws Exception
    def isAuthenticated()
        if BooleanUtil.getInstance().getFromString(@authenticated)
            return true
        else
            return false
        end
    end
    

    def isAuthenticationSessionValid(roles)
        begin
            if @role != nil
                if self.isAuthenticated()
                    if @sessionUserName != nil
                        basicUserRole = @role.getBasicUserRole()
                        basicUserRoleArray = roles.toArray()
                        size = basicUserRoleArray.length
                        (0...size).each do |index|
                            mustBeOfRole = basicUserRoleArray[index]
                            if basicUserRole.equals(mustBeOfRole)
                                if basicUserRole.equals(UserRoleFactory.getInstance().CUSTOMER)
                                    userEntityInterface = UserEntityFactory.getInstance()
                                    userInterface = userEntityInterface.getUser(@sessionUserName)
                                    if !userInterface.isSessionValid()
                                        return false
                                    end
                                end
                                return true
                            end
                        end
                    end
                    return false
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                    @logUtil.putF("Role Is Not In Session", self, "isAuthenticationSessionValid()")
                end
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isAuthenticatedSessionValid()", e)
            end
            return false
        end
    end
    

    def nextAttempt()
        if @attemptsInteger != nil && @attemptsInteger.to_i > 0
            @weblisketSession.setAttempts(@attemptsInteger.to_i + 1)
        else
            @weblisketSession.setAttempts(1)
        end
    end
    

    def processIfNewLogin(userName, password)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.putF("Starting: " + userName, self, "processIfNewLogin()")
            end
            if userName != nil && (userName <=> StringUtil.getInstance().EMPTY_STRING) != 0 && password != nil && (password <=> StringUtil.getInstance().EMPTY_STRING) != 0
                login = nil
                userEntityInterface = UserEntityFactory.getInstance()
                login = userEntityInterface.login(userName, password)
                if (login <=> GLOBALS2.LOGINSUCCESS) == 0
                    userInterface = userEntityInterface.getUser(userName)
                    if userInterface.isSessionValid()
                        @weblisketSession.setAttempts(0)
                        return true
                    end
                end
                self.nextAttempt()
                return false
            end
            self.nextAttempt()
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processIfNewLogin()", e)
            end
            return false
        end
    end
    

    def processInvalidation()
        begin
            if BooleanUtil.getInstance().getFromString(@timeout)
                self.invalidateSession()
                return true
            end
            begin
                @weblisketSession.setTimeout(BooleanFactory.getInstance().TRUE_STRING)
                return false
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processInvalidation()", e)
            end
            return false
        end
    end
    

    def outputSessionInfo()
        begin
            calendar = Calendar.getInstance()
            timeCreated = @weblisketSession.getCreationTime()
            stringBuffer = StringMaker.new()
            lastAccess = @weblisketSession.getLastAccessedTime()
            stringBuffer.append("Time Since Last Access: " + ((calendar.getTimeInMillis() - lastAccess)).to_s + "<br/>\n")
            if @role != nil
                stringBuffer.append("Auth: ")
                stringBuffer.append(@authenticated)
                stringBuffer.append(" UserName: ")
                stringBuffer.append(@sessionUserName)
                stringBuffer.append(" Role: ")
                stringBuffer.append(@role.to_s)
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Time Left: ")
                stringBuffer.appendlong(((@role.getSessionTimeout() - (calendar.getTimeInMillis() - timeCreated))).to_i)
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Inactivity Time Allowed: ")
                stringBuffer.appendlong((@role.getSessionTimeout()).to_i)
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Inactivity Time Allowed: ")
                stringBuffer.appendlong((@role.getSessionInactivityTimeout()).to_i)
                stringBuffer.append("<br/>\n")
            else
                stringBuffer.append("Role Is Not Set<br/>\n")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            return "Error"
        end
    end
    

    def getRole()
        return @role
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleFactory"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/data/tables/user/UserEntityInterface"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/java/bool/BooleanUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

