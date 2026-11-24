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
# package org.allbinary.logic.communication.smtp.configuration.user.event

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event

class UserEmailEventsConfiguration
    include UserEmailEventsConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :emailEventHashMap

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @emailEventHashMap = nil unless instance_variable_defined?(:@emailEventHashMap)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration_1(*args)
        else raise ArgumentError, "No constructor of UserEmailEventsConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration_0()
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration
        self.init()
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration_1(hashMap)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfiguration
        self.init()
    end
    

    def init()
        @emailEventHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, " Constructor")
        end
    end
    java_overload :init, 0
    

    def getEventConfigurationHashMap()
        return @emailEventHashMap
    end
    java_overload :getEventConfigurationHashMap, 0
    

    def addUserEmailEventConfiguration(userEmailEventConfigurationInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Adding: " + (userEmailEventConfigurationInterface.log()).to_s, self, "addUserEmailEventConfiguration")
        end
        @emailEventHashMap.put(userEmailEventConfigurationInterface.getName(), userEmailEventConfigurationInterface)
    end
    java_overload :addUserEmailEventConfiguration, 1
    

    # throws Exception
    def getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        userEmailEventConfigurationInterface = @emailEventHashMap.get(userEmailEventNameData.to_s)
        return UserEmailEventListenerFactory.getInstance(abeClientInformation, userEmailEventConfigurationInterface, userInterface)
    end
    java_overload :getEventListener, 3
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface" unless const_defined?(:UserEmailEventListenerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface" unless const_defined?(:UserEmailEventConfigurationInterface, false)
autoload :UserEmailEventListenerFactory, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventListenerFactory" unless const_defined?(:UserEmailEventListenerFactory, false)

end; end; end; end; end; end; end; end

