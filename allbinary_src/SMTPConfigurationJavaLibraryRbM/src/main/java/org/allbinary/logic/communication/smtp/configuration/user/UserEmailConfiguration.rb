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
# package org.allbinary.logic.communication.smtp.configuration.user

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User

class UserEmailConfiguration
    include UserEmailConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :userEmailEventsConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @userEmailEventsConfigurationInterface = nil unless instance_variable_defined?(:@userEmailEventsConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration_1(*args)
        else raise ArgumentError, "No constructor of UserEmailConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration_0()
        jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        self.setUserEmailEventsConfigurationInterface(::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::Event::UserEmailEventsConfiguration.new())
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration_1(hashMap)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfiguration
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        self.setUserEmailEventsConfigurationInterface(::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::Event::UserEmailEventsConfiguration.new(hashMap))
    end
    

    def getUserEmailEventsConfigurationInterface()
        return @userEmailEventsConfigurationInterface
    end
    java_overload :getUserEmailEventsConfigurationInterface, 0
    

    def setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationInterface)
        @userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    end
    java_overload :setUserEmailEventsConfigurationInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration" unless const_defined?(:UserEmailEventsConfiguration, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface" unless const_defined?(:UserEmailEventsConfigurationInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

