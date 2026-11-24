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
# package org.allbinary.business.user.password

# require "java/util/Random"

module ::Org; module Allbinary; module Business; module User; module Password

class Password
    attr_accessor :logUtil, :password

    def jfields_org_allbinary_business_user_password_Password
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @password = nil unless instance_variable_defined?(:@password)
    end
    

    def initialize(password)
        jfields_org_allbinary_business_user_password_Password
        @password = password
    end
    

    def set(value)
        @password = value
    end
    

    def get()
        return @password
    end
    

    def isValid()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            valid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATION)
                @logUtil.putF("Password: " + @password, self, commonStrings.IS_VALID)
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@password, 6, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATION)
                    @logUtil.putF("Password is invalid", self, commonStrings.IS_VALID)
                end
                valid = false
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATIONERROR)
                @logUtil.put("Failed to validate form", "Password", commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def getValidationInfo()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@password, 6, ::Org::Allbinary::Business::User::UserData::MAXLEN)
            return "Please enter a Password with more than 6 characters.<br />"
        end
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        return stringUtil.EMPTY_STRING
    end
    

    def toVector(secret)
        @password = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(@password)
        random = Random.new().nextInt(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt::KEYMAX)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(random.to_s)
        vector.add(secret)
        vector.add(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(random).encrypt(@password))
        return vector
    end
    

    def toHashMap(secret)
        @password = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(@password)
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        random = Random.new().nextInt(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt::KEYMAX)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION, random.to_s)
        values.put(::Org::Allbinary::Business::User::UserData::SECRET, secret)
        values.put(::Org::Allbinary::Business::User::UserData::PASSWORD, ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(random).encrypt(@password))
        return values
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

