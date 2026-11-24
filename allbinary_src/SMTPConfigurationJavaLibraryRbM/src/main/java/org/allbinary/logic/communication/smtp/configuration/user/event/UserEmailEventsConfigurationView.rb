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
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event

class UserEmailEventsConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :userEmailEventsConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @userEmailEventsConfigurationInterface = nil unless instance_variable_defined?(:@userEmailEventsConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of UserEmailEventsConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1_1(node)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView
        @userEmailEventsConfigurationInterface = UserEmailEventsConfiguration.new()
        childNodeList = node.getChildNodes()
        emailEventConfigurationNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodesNoThrow(UserEmailEventConfigurationData::NAME, childNodeList)
        size = emailEventConfigurationNodeVector.size()
        (0...size).each do |index|
            userEmailConfigurationNode = emailEventConfigurationNodeVector.get(index)
            userEmailEventConfigurationView = UserEmailEventConfigurationView.new(userEmailConfigurationNode)
            @userEmailEventsConfigurationInterface.addUserEmailEventConfiguration(userEmailEventConfigurationView.getUserEmailEventConfigurationInterface())
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView_1_2(userEmailEventsConfigurationInterface)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventsConfigurationView
        @userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    end
    

    def getUserEmailEventsConfigurationInterface()
        return @userEmailEventsConfigurationInterface
    end
    java_overload :getUserEmailEventsConfigurationInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        userEmailConfigurationMapping = UserEmailEventsConfigurationMapping.new(@userEmailEventsConfigurationInterface)
        node = document.createElement(UserEmailEventsConfigurationData::NAME)
        emailEventHashMap = self.getUserEmailEventsConfigurationInterface().getEventConfigurationHashMap()
        set = emailEventHashMap.keySet()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Number Of Email Events Specified in file: " + (set.size()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
        eventNameArray = set.toArray()
        size = eventNameArray.length
        (0...size).each do |index|
            eventName = eventNameArray[index]
            userEmailEventsConfigurationInterface = emailEventHashMap.get(eventName)
            userEmailEventConfigurationView = UserEmailEventConfigurationView.new(userEmailEventsConfigurationInterface)
            node.appendChild(userEmailEventConfigurationView.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :UserEmailEventConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData" unless const_defined?(:UserEmailEventConfigurationData, false)
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface" unless const_defined?(:UserEmailEventConfigurationInterface, false)
autoload :UserEmailEventConfigurationView, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationView" unless const_defined?(:UserEmailEventConfigurationView, false)
autoload :UserEmailEventsConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration" unless const_defined?(:UserEmailEventsConfiguration, false)
autoload :UserEmailEventsConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData" unless const_defined?(:UserEmailEventsConfigurationData, false)
autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface" unless const_defined?(:UserEmailEventsConfigurationInterface, false)
autoload :UserEmailEventsConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationMapping" unless const_defined?(:UserEmailEventsConfigurationMapping, false)

end; end; end; end; end; end; end; end

