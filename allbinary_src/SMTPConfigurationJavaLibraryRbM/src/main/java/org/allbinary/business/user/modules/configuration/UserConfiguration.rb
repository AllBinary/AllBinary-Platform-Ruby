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
# package org.allbinary.business.user.modules.configuration

require "java/lang/JavaOverload"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"

module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

class UserConfiguration
    include UserConfigurationInterface
    attr_accessor :userEmailConfigurationInterface, :timeCreated, :timeLastModified

    def jfields_org_allbinary_business_user_modules_configuration_UserConfiguration
        @userEmailConfigurationInterface = nil unless instance_variable_defined?(:@userEmailConfigurationInterface)
        @timeCreated = nil unless instance_variable_defined?(:@timeCreated)
        @timeLastModified = nil unless instance_variable_defined?(:@timeLastModified)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_configuration_UserConfiguration_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_configuration_UserConfiguration_1(*args)
        else raise ArgumentError, "No constructor of UserConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_modules_configuration_UserConfiguration_0()
        jfields_org_allbinary_business_user_modules_configuration_UserConfiguration
        @userEmailConfigurationInterface = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::UserEmailConfiguration.new()
        @timeCreated = ::Org::Allbinary::Business::TimePackage::Created::TimeCreated.new(0)
        @timeLastModified = ::Org::Allbinary::Business::TimePackage::Modified::TimeLastModified.new(0)
    end
    

    def jnew_org_allbinary_business_user_modules_configuration_UserConfiguration_1(hashMap)
        jfields_org_allbinary_business_user_modules_configuration_UserConfiguration
        @userEmailConfigurationInterface = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::UserEmailConfiguration.new(hashMap)
        @timeCreated = ::Org::Allbinary::Business::TimePackage::Created::TimeCreated.new(hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED))
        @timeLastModified = ::Org::Allbinary::Business::TimePackage::Modified::TimeLastModified.new(hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED))
    end
    

    def getUserEmailConfigurationInterface()
        return @userEmailConfigurationInterface
    end
    java_overload :getUserEmailConfigurationInterface, 0
    

    def setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    java_overload :setUserEmailConfigurationInterface, 1
    

    def getTimeCreated()
        return @timeCreated
    end
    java_overload :getTimeCreated, 0
    

    def getTimeLastModified()
        return @timeLastModified
    end
    java_overload :getTimeLastModified, 0
    

    def setTimeCreated(timeCreated)
        @timeCreated = timeCreated
    end
    java_overload :setTimeCreated, 1
    

    def setTimeLastModified(timeLastModified)
        @timeLastModified = timeLastModified
    end
    java_overload :setTimeLastModified, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; module Created; autoload :TimeCreated, "org/allbinary/business/time/created/TimeCreated" unless const_defined?(:TimeCreated, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; module Modified; autoload :TimeLastModified, "org/allbinary/business/time/modified/TimeLastModified" unless const_defined?(:TimeLastModified, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration" unless const_defined?(:UserEmailConfiguration, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface" unless const_defined?(:UserEmailConfigurationInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end

