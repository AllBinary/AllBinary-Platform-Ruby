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

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class AuthenticationRequestHelper < TagHelper
    attr_accessor :logUtil, :abeClientInformation, :weblisketSession, :request

    def jfields_admin_taghelpers_AuthenticationRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @request = nil unless instance_variable_defined?(:@request)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_admin_taghelpers_AuthenticationRequestHelper_2(*args)
        else raise ArgumentError, "No constructor of AuthenticationRequestHelper takes #{args.length} arguments"
        end
    end

    def jnew_admin_taghelpers_AuthenticationRequestHelper_2(*java_overload_args)
        return jnew_admin_taghelpers_AuthenticationRequestHelper_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return jnew_admin_taghelpers_AuthenticationRequestHelper_2_2(*java_overload_args)
    end
    

    def jnew_admin_taghelpers_AuthenticationRequestHelper_2_1(hashMap, pageContext)
        AuthenticationRequestHelper.superclass.instance_method(:initialize).bind(self).call()
        jfields_admin_taghelpers_AuthenticationRequestHelper
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        @request = pageContext.getRequest()
    end
    

    def jnew_admin_taghelpers_AuthenticationRequestHelper_2_2(hashMap, httpServletRequest)
        AuthenticationRequestHelper.superclass.instance_method(:initialize).bind(self).call()
        jfields_admin_taghelpers_AuthenticationRequestHelper
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, httpServletRequest)
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
    java_overload :generateNewPassword, 0
    

    def newPassword()
        begin
            userName = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
            email = @request.getParameter(::Org::Allbinary::Business::User::UserData::MAINEMAIL)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Generating New Password For: " + userName, self, "newPassword()")
            end
            userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            if userInterface.getMainEmail().compareTo(email) != 0
                if userInterface.getSecondaryEmail() != nil && userInterface.getSecondaryEmail().compareTo(email) != 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                        @logUtil.putF("Requested Email Is Not In User Profile", self, "newPassword()")
                    end
                    return false
                end
            end
            newPassword = self.generateNewPassword()
            userInterface.setPassword(newPassword)
            newPasswordHashMap = userInterface.toPasswordHashMap()
            ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().update(userName, newPasswordHashMap)
            ::Org::Allbinary::Logic::Communication::Smtp::EmailPackage::NewPasswordEmail.new(@abeClientInformation, userInterface, newPassword).process()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Generated New Password For: " + userName, self, "newPassword()")
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "newPassword()", e)
            end
            return false
        end
    end
    java_overload :newPassword, 0
    

    def changePassword()
        begin
            userName = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
            passwordString = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEPASSWORD)
            newPassword = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLENEWPASSWORD)
            newReenteredPassword = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEREENTERNEWPASSWORD)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Changing Password For User: " + userName, self, "changePassword()")
            end
            password = ::Org::Allbinary::Business::User::Password::Password.new(newPassword)
            if !password.isValid()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("New Password Is Not Valid", self, "changePassword()")
                end
                return false
            end
            if (newPassword <=> newReenteredPassword) != 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("New Password Fields Do Not Match", self, "changePassword()")
                end
                return false
            end
            sessionPassword = @weblisketSession.getPassword()
            userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            login = userEntityInterface.login(userName, passwordString)
            if (login <=> ::Org::Allbinary::Globals::GLOBALS2::LOGINSUCCESS) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF("Authentication Successful", self, "changePassword()")
                end
                newPasswordHashMap = password.toHashMap(nil)
                ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().update(userName, newPasswordHashMap)
                ::Org::Allbinary::Logic::Communication::Smtp::EmailPackage::NewPasswordEmail.new(@abeClientInformation, userInterface, newPassword).process()
                return true
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Authentication Failed", self, "changePassword()")
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put("Authentication Failed", self, "changePassword()", e)
            end
            return false
        end
    end
    java_overload :changePassword, 0
    

    def isRoleValid(userName, password, roles)
        begin
            userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
            userInterface = userEntityInterface.getUser(userName)
            if userInterface.getRole() == nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
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
                    @request.removeAttribute(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
                    @request.removeAttribute(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEPASSWORD)
                    return true
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Role is not valid: ")
                stringBuffer.append(userInterface.getRole().to_s)
                stringBuffer.append(" Valid Roles: ")
                stringBuffer.append(roles.to_s)
                @logUtil.putF(stringBuffer.to_s, self, "isRoleValid()")
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isRoleValid()", e)
            end
            return false
        end
    end
    java_overload :isRoleValid, 3
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Password; autoload :Password, "org/allbinary/business/user/password/Password" unless const_defined?(:Password, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityInterface, "org/allbinary/data/tables/user/UserEntityInterface" unless const_defined?(:UserEntityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module EmailPackage; autoload :NewPasswordEmail, "org/allbinary/logic/communication/smtp/email/NewPasswordEmail" unless const_defined?(:NewPasswordEmail, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

