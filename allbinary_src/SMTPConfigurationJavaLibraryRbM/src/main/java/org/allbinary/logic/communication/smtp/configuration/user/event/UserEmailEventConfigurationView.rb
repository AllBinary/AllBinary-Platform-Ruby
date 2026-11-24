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
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event

class UserEmailEventConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :userEmailEventConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView
        @userEmailEventConfigurationInterface = nil unless instance_variable_defined?(:@userEmailEventConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of UserEmailEventConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1_1(node)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView
        childNodeList = node.getChildNodes()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(UserEmailEventConfigurationData::NAME, childNodeList)
        hashMap.put(UserEmailEventConfigurationData::NAME, name)
        eventListenerClassPath = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(UserEmailEventConfigurationData::LISTENER_CLASSPATH, childNodeList)
        hashMap.put(UserEmailEventConfigurationData::LISTENER_CLASSPATH, eventListenerClassPath)
        self.setUserEmailEventConfigurationInterface(UserEmailEventConfiguration.new(hashMap))
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView_1_2(userEmailEventConfigurationInterface)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_event_UserEmailEventConfigurationView
        self.setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        userEmailEventConfigurationMapping = UserEmailEventConfigurationMapping.new(self.getUserEmailEventConfigurationInterface())
        hashMap = userEmailEventConfigurationMapping.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, UserEmailEventConfigurationData::NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
    

    def getUserEmailEventConfigurationInterface()
        return @userEmailEventConfigurationInterface
    end
    java_overload :getUserEmailEventConfigurationInterface, 0
    

    def setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface)
        @userEmailEventConfigurationInterface = userEmailEventConfigurationInterface
    end
    java_overload :setUserEmailEventConfigurationInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :UserEmailEventConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfiguration" unless const_defined?(:UserEmailEventConfiguration, false)
autoload :UserEmailEventConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData" unless const_defined?(:UserEmailEventConfigurationData, false)
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface" unless const_defined?(:UserEmailEventConfigurationInterface, false)
autoload :UserEmailEventConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationMapping" unless const_defined?(:UserEmailEventConfigurationMapping, false)

end; end; end; end; end; end; end; end

