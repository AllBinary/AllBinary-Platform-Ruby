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
# package org.allbinary.business.user.username


module ::Org; module Allbinary; module Business; module User; module Username

class UserName
    attr_accessor :logUtil, :userName

    def jfields_org_allbinary_business_user_username_UserName
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userName = nil unless instance_variable_defined?(:@userName)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_username_UserName_0(*args)
        when 1 then jnew_org_allbinary_business_user_username_UserName_1(*args)
        else raise ArgumentError, "No constructor of UserName takes #{args.length} arguments"
        end
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def jnew_org_allbinary_business_user_username_UserName_0()
        jfields_org_allbinary_business_user_username_UserName
    end
    

    def jnew_org_allbinary_business_user_username_UserName_1(hashMap)
        jfields_org_allbinary_business_user_username_UserName
        @userName = hashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME)
    end
    

    def isValid_j0()
        begin
            return self.isValid(@userName)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, "isUserNameValid()", e)
            end
            return false
        end
    end
    

    def get()
        return @userName
    end
    

    def isValid_j1(aUserName)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
            valid = booleanFactory.TRUE
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATION)
                @logUtil.putF("UserName: " + aUserName, self, commonStrings.IS_VALID)
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(aUserName, 5, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATION)
                    @logUtil.putF("UserName is invalid", self, commonStrings.IS_VALID)
                end
                valid = booleanFactory.FALSE
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, commonStrings.IS_VALID, e)
            end
            return false
        end
    end

    def isValid(*java_overload_args)
        return isValid_j0(*java_overload_args) if java_overload_args.length == 0
        return isValid_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method isValid takes #{java_overload_args.length} arguments"
    end
    

    def self.getValidationInfo(aUserName)
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(aUserName, 5, ::Org::Allbinary::Business::User::UserData::MAXLEN)
            return "Please enter a User Name with more than 5 characters.<br/>"
        end
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end

    def self.instance()
        UserName.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UserName.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UserName.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserName"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    UserName.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

