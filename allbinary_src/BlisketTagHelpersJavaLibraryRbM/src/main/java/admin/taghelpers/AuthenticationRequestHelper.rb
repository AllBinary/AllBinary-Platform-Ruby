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
require "admin/taghelpers/TagHelper"

class AuthenticationRequestHelper < TagHelper
    attr_accessor :logUtil, :abeClientInformation, :weblisketSession, :request

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @weblisketSession = nil
        @request = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor2(hashMap, pageContext)
        method(:initialize).super_method.call()
        initialize_fields
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @request = pageContext.getRequest()
    end
    

    def constructor2(hashMap, httpServletRequest)
        method(:initialize).super_method.call()
        initialize_fields
        @weblisketSession = WeblisketSession.new(hashMap, httpServletRequest)
        @request = httpServletRequest
    end
    

    # throws Exception
    def generateNewPassword()
        if @weblisketSession != nil && @weblisketSession.getId() != nil
            startIndex = @weblisketSession.getId().length()
            if startIndex >= 8
                return @weblisketSession.getId().substring(startIndex - 8)
            else
                raise StandardError.new("Error Generating New Password")
            end
        else
            raise StandardError.new("No Session Available For Generating New Password")
        end
    end
    

    def newPassword()
        begin
            userName = @request.getParameter(WeblisketSessionData::REMOVABLEUSERNAME)
            email = @request.getParameter(UserData::MAINEMAIL)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Generating New Password For: " + userName, self, "newPassword()")
            end
            userEntityInterface = UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            if userInterface.getMainEmail().compareTo(email) != 0
                if userInterface.getSecondaryEmail() != nil && userInterface.getSecondaryEmail().compareTo(email) != 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                        @logUtil.putF("Requested Email Is Not In User Profile", self, "newPassword()")
                    end
                    return false
                end
            end
            newPassword = self.generateNewPassword()
            userInterface.setPassword(newPassword)
            newPasswordHashMap = userInterface.toPasswordHashMap()
            UserEntityFactory.getInstance().update(userName, newPasswordHashMap)
            NewPasswordEmail.new(@abeClientInformation, userInterface, newPassword).process()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Generated New Password For: " + userName, self, "newPassword()")
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "newPassword()", e)
            end
            return false
        end
    end
    

    def changePassword()
        begin
            userName = @request.getParameter(WeblisketSessionData::REMOVABLEUSERNAME)
            passwordString = @request.getParameter(WeblisketSessionData::REMOVABLEPASSWORD)
            newPassword = @request.getParameter(WeblisketSessionData::REMOVABLENEWPASSWORD)
            newReenteredPassword = @request.getParameter(WeblisketSessionData::REMOVABLEREENTERNEWPASSWORD)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Changing Password For User: " + userName, self, "changePassword()")
            end
            password = Password.new(newPassword)
            if !password.isValid()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("New Password Is Not Valid", self, "changePassword()")
                end
                return false
            end
            if (newPassword <=> newReenteredPassword) != 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("New Password Fields Do Not Match", self, "changePassword()")
                end
                return false
            end
            sessionPassword = @weblisketSession.getPassword()
            userEntityInterface = UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            login = userEntityInterface.login(userName, passwordString)
            if (login <=> GLOBALS2.LOGINSUCCESS) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("Authentication Successful", self, "changePassword()")
                end
                newPasswordHashMap = password.toHashMap(nil)
                UserEntityFactory.getInstance().update(userName, newPasswordHashMap)
                NewPasswordEmail.new(@abeClientInformation, userInterface, newPassword).process()
                return true
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Authentication Failed", self, "changePassword()")
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put("Authentication Failed", self, "changePassword()", e)
            end
            return false
        end
    end
    

    def isRoleValid(userName, password, roles)
        begin
            userEntityInterface = UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            if userInterface.getRole() == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("Role is null: " + (userInterface.getRole()).to_s + " Valid Roles: " + roles.to_s, self, "isRoleValid()")
                end
                return false
            end
            basicUserRoleArray = roles.toArray()
            size = basicUserRoleArray.length
            (0...size).each do |index|
                nextRole = basicUserRoleArray[index]
                if userInterface.getRole().getBasicUserRole().equals(nextRole)
                    userInterface.validateSession(@weblisketSession)
                    @request.removeAttribute(WeblisketSessionData::REMOVABLEUSERNAME)
                    @request.removeAttribute(WeblisketSessionData::REMOVABLEPASSWORD)
                    return true
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Role is not valid: ")
                stringBuffer.append(userInterface.getRole().to_s)
                stringBuffer.append(" Valid Roles: ")
                stringBuffer.append(roles.to_s)
                @logUtil.putF(stringBuffer.to_s, self, "isRoleValid()")
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isRoleValid()", e)
            end
            return false
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/password/Password"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/data/tables/user/UserEntityInterface"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/email/NewPasswordEmail"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

