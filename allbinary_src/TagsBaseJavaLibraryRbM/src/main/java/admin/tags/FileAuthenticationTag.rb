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
# package admin.tags

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/tagext/TagSupport"
require "tags/CustomTagSupport"

class FileAuthenticationTag < CustomTagSupport
    attr_accessor :logUtil, :attemptsInteger, :weblisketSession, :request, :command, :userName, :password, :newPassword, :authenticated, :sessionUserName, :role, :timeout, :roles

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @attemptsInteger = nil
        @weblisketSession = nil
        @request = nil
        @command = nil
        @userName = nil
        @password = nil
        @newPassword = nil
        @authenticated = nil
        @sessionUserName = nil
        @role = nil
        @timeout = nil
        @roles = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setCommand(command)
        @command = command
    end
    

    def setUserName(userName)
        @userName = userName
    end
    

    def setPassword(value)
        @password = value
    end
    

    def setNewPassword(value)
        @newPassword = value
    end
    

    def setRoles(values)
        @roles = values
    end
    

    def makeSessionValid(storedRole, userName)
        @weblisketSession.setAuthenticated()
        @weblisketSession.setRole(storedRole)
        @weblisketSession.setUserName(userName)
        @request.removeAttribute(WeblisketSessionData::REMOVABLEUSERNAME)
        @request.removeAttribute(WeblisketSessionData::REMOVABLEPASSWORD)
    end
    

    def getFormData()
        @authenticated = @weblisketSession.getAuthentication()
        @sessionUserName = @weblisketSession.getUserName()
        @role = @weblisketSession.getRole()
        @attemptsInteger = @weblisketSession.getAttempts()
        @timeout = @weblisketSession.getTimeout()
    end
    

    def nextAttempt()
        if @attemptsInteger != nil && @attemptsInteger.to_i > 0
            @weblisketSession.setAttempts(@attemptsInteger.to_i + 1)
        else
            @weblisketSession.setAttempts(1)
        end
    end
    

    # throws LicensingException
    def changePassword()
        begin
            userName = @request.getParameter(WeblisketSessionData::REMOVABLEUSERNAME)
            password = @request.getParameter(WeblisketSessionData::REMOVABLEPASSWORD)
            newPassword = @request.getParameter(WeblisketSessionData::REMOVABLENEWPASSWORD)
            newReenteredPassword = @request.getParameter(WeblisketSessionData::REMOVABLEREENTERNEWPASSWORD)
            if (newPassword <=> newReenteredPassword) != 0
                return false
            end
            installerInfo = InstallerInfo.new()
            if installerInfo.isValid(userName, password)
                installerInfo.setPassword(newPassword)
                installerInfo.write()
                @weblisketSession.setUserName(userName)
                @weblisketSession.setPassword(newPassword)
                return true
            end
            return false
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return false
        end
    end
    

    def invalidateSession()
        begin
            @weblisketSession.clear()
            return TagSupport::EVAL_BODY_INCLUDE.to_i
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return TagSupport::SKIP_BODY
        end
    end
    

    # throws LicensingException
    def isSessionOld()
        begin
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
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSessionOld()", e)
            end
            return false
        end
    end
    

    def isRarelyUsedSession()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            lastAccess = @weblisketSession.getLastAccessedTime()
            timePassed = @role.getSessionInactivityTimeout()
            calendar = Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - lastAccess
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Session Is Rarely Used - Timeout: ")
                stringBuffer.appendlong(lastAccess)
                stringBuffer.append(" Eval: ")
                stringBuffer.appendlong(timeFirst)
                stringBuffer.append(" > ")
                stringBuffer.appendlong(timePassed)
                @logUtil.putF(stringBuffer.to_s, self, "isRarelyUsedSession()")
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().AUTHENTICATION)
                @logUtil.putF("Role Is Not In Session", self, "isRarelyUsedSession()")
            end
        end
        return false
    end
    

    # throws LicensingException
    def isRoleValid()
        begin
            self.makeSessionValid(BasicUserRoleFactory.getInstance().INSTALLER, @userName)
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isRoleValid()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def validRole()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Trying New login<p>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set valid role"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validRole()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def invalidRole()
        begin
            @weblisketSession.setAuthenticated(false)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Sorry your username and password is invalid on this page.")
            stringBuffer.append("Trying New login<p>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set role invalid"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidRole()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def isAuthenticationSessionValid()
        begin
            if BooleanUtil.getInstance().getFromString(@authenticated)
                size = @roles.size()
                (0...size).each do |index|
                    mustBeOfRole = @roles.get(index)
                    if @sessionUserName != nil && @role.equals(mustBeOfRole)
                        return true
                    end
                end
                return false
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isAuthenticationSessionValid()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def processIfNewLogin()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.putF("Starting for User: " + @userName + " Attempt: " + (@weblisketSession.getAttempts()).to_s, self, "processIfNewLogin()")
            end
            if @userName != nil && (@userName <=> StringUtil.getInstance().EMPTY_STRING) != 0 && @password != nil && (@password <=> StringUtil.getInstance().EMPTY_STRING) != 0
                login = nil
                installerInfo = InstallerInfo.new()
                if installerInfo.isValid(@userName, @password)
                    login = org.allbinary.globals.GLOBALS2.LOGINSUCCESS
                else
                    login = org.allbinary.globals.GLOBALS2.LOGINFAILED
                end
                if (login <=> org.allbinary.globals.GLOBALS2.LOGINSUCCESS) == 0
                    @weblisketSession.setAttempts(0)
                    return true
                end
                self.nextAttempt()
                return false
            end
            self.nextAttempt()
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processIfNewLogin()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSetToInvalidate()", e)
            end
            return false
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            stringUtil = StringUtil.getInstance()
            @request = @pageContext.getRequest()
            @weblisketSession = BasicWeblisketSession.new(@pageContext)
            self.getFormData()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("Started", self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                if (@command <=> org.allbinary.globals.GLOBALS2.CHANGEPASSWORD) == 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("Change Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.changePassword()
                        @pageContext.getOut().print("Password Change Attempt Failed.<p>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("Password Changed Successfully.<p>")
                        return SKIP_BODY
                    end
                elsif (@command <=> WeblisketSessionData::INVALIDATESESSION) == 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("INVALIDATESESSION", self, @tagStrings.DO_START_TAG)
                    end
                    return self.invalidateSession()
                else
                    if self.isSessionOld()
                        if self.processInvalidation()
                            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Processing Invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print("Please login again.<p>")
                            if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        else
                            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Preparing session for invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        end
                    end
                    if (@userName == nil || (@userName <=> stringUtil.EMPTY_STRING) == 0) && (@password == nil || (@password <=> stringUtil.EMPTY_STRING) == 0) && @roles != nil && self.isAuthenticationSessionValid()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Authenticated session is valid", self, @tagStrings.DO_START_TAG)
                        end
                        if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                            return TagSupport::EVAL_BODY_INCLUDE
                        else
                            return TagSupport::SKIP_BODY
                        end
                    end
                    if @userName != nil && @password != nil && self.processIfNewLogin()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Processing new login.", self, @tagStrings.DO_START_TAG)
                        end
                        if self.isRoleValid()
                            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(validRole())
                            if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                                return EVAL_BODY_INCLUDE
                            else
                                return SKIP_BODY
                            end
                        else
                            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is not valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(invalidRole())
                            if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                                return SKIP_BODY
                            else
                                return EVAL_BODY_INCLUDE
                            end
                        end
                    else
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Invalid Login", self, @tagStrings.DO_START_TAG)
                        end
                        if @userName != nil && (@userName <=> StringUtil.getInstance().EMPTY_STRING) != 0 && @password != nil && (@password <=> StringUtil.getInstance().EMPTY_STRING) != 0
                            @pageContext.getOut().print("Sorry your username and/or password is invalid.<p>")
                        end
                    end
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Major authentication error - userName: ")
                        stringBuffer.append(@userName)
                        stringBuffer.append(" Password: ")
                        stringBuffer.append(@password)
                        stringBuffer.append(" Command: ")
                        stringBuffer.append(@command)
                        @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                    end
                    if (@command <=> org.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED) == 0
                        return TagSupport::SKIP_BODY
                    else
                        return TagSupport::EVAL_BODY_INCLUDE
                    end
                end
            end
            return SKIP_BODY
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "java/util/Calendar"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/InstallerInfo"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/business/user/role/BasicUserRoleFactory"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/http/request/session/BasicWeblisketSession"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/java/bool/BooleanUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

