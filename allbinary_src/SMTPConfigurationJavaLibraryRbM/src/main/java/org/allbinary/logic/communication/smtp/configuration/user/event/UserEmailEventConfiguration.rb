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
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event

class UserEmailEventConfiguration
    include UserEmailEventConfigurationInterface
    attr_accessor :logUtil, :name, :eventListenerClassPath

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @eventListenerClassPath = nil unless instance_variable_defined?(:@eventListenerClassPath)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration_1(*args)
        else raise ArgumentError, "No constructor of UserEmailEventConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration_0()
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration
        self.setName(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        self.setEventListenerClassPath(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("New", self, " Constructor")
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration_1(hashMap)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfiguration
        self.setName(hashMap.get(UserEmailEventConfigurationData::NAME))
        self.setEventListenerClassPath(hashMap.get(UserEmailEventConfigurationData::LISTENER_CLASSPATH))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Log: " + (self.log()).to_s, self, " Constructor")
        end
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def getEventListenerClassPath()
        return @eventListenerClassPath
    end
    java_overload :getEventListenerClassPath, 0
    

    def setEventListenerClassPath(eventListenerClassPath)
        @eventListenerClassPath = eventListenerClassPath
    end
    java_overload :setEventListenerClassPath, 1
    

    def log()
        return "\nUser Email Event Log Info:" + "\nName: " + self.getName() + "\nEventListenerClassPath: " + (self.getEventListenerClassPath()).to_s
    end
    java_overload :log, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :UserEmailEventConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData" unless const_defined?(:UserEmailEventConfigurationData, false)

end; end; end; end; end; end; end; end

