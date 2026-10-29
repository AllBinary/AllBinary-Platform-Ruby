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

# require "java/lang/reflect/Method"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/tagext/TagSupport"
require "tags/CustomTagSupport"

class AuthenticationTag < CustomTagSupport
    attr_accessor :logUtil, :command, :userName, :password, :newPassword, :roles, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @command = nil
        @userName = nil
        @password = nil
        @newPassword = nil
        @roles = nil
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
        stringUtil = StringUtil.getInstance()
        @userName = stringUtil.EMPTY_STRING
        @password = stringUtil.EMPTY_STRING
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
    

    # throws LicensingException
    def changePassword()
        begin
            anyType = AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("changePassword", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "changePassword()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def newPassword()
        begin
            anyType = AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("newPassword", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "newPassword()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def invalidateSession()
        begin
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("invalidateSession", nil)
            resultInteger = method.invoke(anyType, nil)
            return resultInteger.to_i
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("isSessionOld", nil)
            resultBoolean = method.invoke(anyType, nil)
            return resultBoolean
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSessionOld()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def isRoleValid()
        begin
            anyType = AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            methodParams = [@userName.class, @password.class, @roles.class]
            method = addressHelperClass.getMethod("isRoleValid", methodParams)
            methodArgs = [@userName, @password, @roles]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("validRole", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("invalidRole", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            methodParams = [@roles.class]
            method = addressHelperClass.getMethod("isAuthenticationSessionValid", methodParams)
            methodArgs = [@roles]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            helperClass = anyType.class
            methodParams = [@userName.class, @password.class]
            method = helperClass.getMethod("processIfNewLogin", methodParams)
            methodArgs = [@userName, @password]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue LicensingException => e
            raise e
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
            anyType = AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("processInvalidation", nil)
            resultBoolean = method.invoke(anyType, nil)
            return resultBoolean
        rescue LicensingException => e
            raise e
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                request = @pageContext.getRequest()
                stringBuffer = StringMaker.new()
                stringBuffer.append(" Request URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                @propertiesHashMap = StdUtil.getInstance().createHashMap()
                if (@command <=> org.allbinary.globals.GLOBALS2.NEWPASSWORD) == 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("New Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.newPassword()
                        @pageContext.getOut().print("New Password Request Failed.<p/>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("New Password Was Sent.<p/>")
                        return SKIP_BODY
                    end
                elsif (@command <=> org.allbinary.globals.GLOBALS2.CHANGEPASSWORD) == 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("Change Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.changePassword()
                        @pageContext.getOut().print("Password Change Attempt Failed.<p/>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("Password Changed Successfully.<p/>")
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
                        if @userName != nil && (@userName <=> stringUtil.EMPTY_STRING) != 0 && @password != nil && (@password <=> stringUtil.EMPTY_STRING) != 0
                            @pageContext.getOut().print("Sorry your username and/or password is invalid.<p/>")
                        end
                    end
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF(StringMaker.new().append("Major authentication error - userName: ").append(@userName).append(" Password: ").append(@password).append(" Command: ").append(@command).to_s, self, @tagStrings.DO_START_TAG)
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

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "admin/taghelpers/AuthenticationHelperFactory"
require "admin/taghelpers/AuthenticationRequestHelperFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

