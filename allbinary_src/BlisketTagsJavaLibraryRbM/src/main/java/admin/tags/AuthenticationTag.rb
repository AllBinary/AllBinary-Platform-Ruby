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

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/tagext/TagSupport"
require "tags/CustomTagSupport"

module ::Admin; module Tags

class AuthenticationTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :command, :userName, :password, :newPassword, :roles, :propertiesHashMap

    def jfields_admin_tags_AuthenticationTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @command = nil unless instance_variable_defined?(:@command)
        @userName = nil unless instance_variable_defined?(:@userName)
        @password = nil unless instance_variable_defined?(:@password)
        @newPassword = nil unless instance_variable_defined?(:@newPassword)
        @roles = nil unless instance_variable_defined?(:@roles)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
    end
    

    def initialize()
        super()
        jfields_admin_tags_AuthenticationTag
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @userName = stringUtil.EMPTY_STRING
        @password = stringUtil.EMPTY_STRING
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setUserName(userName)
        @userName = userName
    end
    java_overload :setUserName, 1
    

    def setPassword(value)
        @password = value
    end
    java_overload :setPassword, 1
    

    def setNewPassword(value)
        @newPassword = value
    end
    java_overload :setNewPassword, 1
    

    def setRoles(values)
        @roles = values
    end
    java_overload :setRoles, 1
    

    # throws LicensingException
    def changePassword()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("changePassword", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "changePassword()", e)
            end
            return false
        end
    end
    java_overload :changePassword, 0
    

    # throws LicensingException
    def newPassword()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("newPassword", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "newPassword()", e)
            end
            return false
        end
    end
    java_overload :newPassword, 0
    

    # throws LicensingException
    def invalidateSession()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("invalidateSession", nil)
            resultInteger = method.invoke(anyType, nil)
            return resultInteger.to_i
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return TagSupport::SKIP_BODY
        end
    end
    java_overload :invalidateSession, 0
    

    # throws LicensingException
    def isSessionOld()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("isSessionOld", nil)
            resultBoolean = method.invoke(anyType, nil)
            return resultBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSessionOld()", e)
            end
            return false
        end
    end
    java_overload :isSessionOld, 0
    

    # throws LicensingException
    def isRoleValid()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            methodParams = [@userName.class, @password.class, @roles.class]
            method = addressHelperClass.getMethod("isRoleValid", methodParams)
            methodArgs = [@userName, @password, @roles]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isRoleValid()", e)
            end
            return false
        end
    end
    java_overload :isRoleValid, 0
    

    # throws LicensingException
    def validRole()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("validRole", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set valid role"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validRole()", e)
            end
            return error
        end
    end
    java_overload :validRole, 0
    

    # throws LicensingException
    def invalidRole()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("invalidRole", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set role invalid"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidRole()", e)
            end
            return error
        end
    end
    java_overload :invalidRole, 0
    

    # throws LicensingException
    def isAuthenticationSessionValid()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            methodParams = [@roles.class]
            method = addressHelperClass.getMethod("isAuthenticationSessionValid", methodParams)
            methodArgs = [@roles]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isAuthenticationSessionValid()", e)
            end
            return false
        end
    end
    java_overload :isAuthenticationSessionValid, 0
    

    # throws LicensingException
    def processIfNewLogin()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            helperClass = anyType.class
            methodParams = [@userName.class, @password.class]
            method = helperClass.getMethod("processIfNewLogin", methodParams)
            methodArgs = [@userName, @password]
            resultBoolean = method.invoke(anyType, methodArgs)
            return resultBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processIfNewLogin()", e)
            end
            return false
        end
    end
    java_overload :processIfNewLogin, 0
    

    # throws LicensingException
    def processInvalidation()
        begin
            anyType = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("processInvalidation", nil)
            resultBoolean = method.invoke(anyType, nil)
            return resultBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSetToInvalidate()", e)
            end
            return false
        end
    end
    java_overload :processInvalidation, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                request = @pageContext.getRequest()
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(" Request URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                @propertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
                if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::NEWPASSWORD) == 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("New Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.newPassword()
                        @pageContext.getOut().print("New Password Request Failed.<p/>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("New Password Was Sent.<p/>")
                        return SKIP_BODY
                    end
                elsif (@command <=> ::Org::Allbinary::Globals::GLOBALS2::CHANGEPASSWORD) == 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("Change Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.changePassword()
                        @pageContext.getOut().print("Password Change Attempt Failed.<p/>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("Password Changed Successfully.<p/>")
                        return SKIP_BODY
                    end
                elsif (@command <=> ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::INVALIDATESESSION) == 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("INVALIDATESESSION", self, @tagStrings.DO_START_TAG)
                    end
                    return self.invalidateSession()
                else
                    if self.isSessionOld()
                        if self.processInvalidation()
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Processing Invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print("Please login again.<p>")
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        else
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Preparing session for invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        end
                    end
                    if (@userName == nil || (@userName <=> stringUtil.EMPTY_STRING) == 0) && (@password == nil || (@password <=> stringUtil.EMPTY_STRING) == 0) && @roles != nil && self.isAuthenticationSessionValid()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Authenticated session is valid", self, @tagStrings.DO_START_TAG)
                        end
                        if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                            return TagSupport::EVAL_BODY_INCLUDE
                        else
                            return TagSupport::SKIP_BODY
                        end
                    end
                    if @userName != nil && @password != nil && self.processIfNewLogin()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Processing new login.", self, @tagStrings.DO_START_TAG)
                        end
                        if self.isRoleValid()
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(validRole())
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return EVAL_BODY_INCLUDE
                            else
                                return SKIP_BODY
                            end
                        else
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is not valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(invalidRole())
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return SKIP_BODY
                            else
                                return EVAL_BODY_INCLUDE
                            end
                        end
                    else
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Invalid Login", self, @tagStrings.DO_START_TAG)
                        end
                        if @userName != nil && (@userName <=> stringUtil.EMPTY_STRING) != 0 && @password != nil && (@password <=> stringUtil.EMPTY_STRING) != 0
                            @pageContext.getOut().print("Sorry your username and/or password is invalid.<p/>")
                        end
                    end
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Major authentication error - userName: ").append(@userName).append(" Password: ").append(@password).append(" Command: ").append(@command).to_s, self, @tagStrings.DO_START_TAG)
                    end
                    if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                        return TagSupport::SKIP_BODY
                    else
                        return TagSupport::EVAL_BODY_INCLUDE
                    end
                end
            end
            return SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Admin; module Taghelpers; autoload :AuthenticationHelperFactory, "admin/taghelpers/AuthenticationHelperFactory" unless const_defined?(:AuthenticationHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :AuthenticationRequestHelperFactory, "admin/taghelpers/AuthenticationRequestHelperFactory" unless const_defined?(:AuthenticationRequestHelperFactory, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

