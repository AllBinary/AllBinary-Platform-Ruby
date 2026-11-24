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
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User

class UserEmailConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :userEmailConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @userEmailConfigurationInterface = nil unless instance_variable_defined?(:@userEmailConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of UserEmailConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1_1(node)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        @userEmailConfigurationInterface = UserEmailConfiguration.new()
        childNodeList = node.getChildNodes()
        userEmailEventsConfigurationNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::Event::UserEmailEventsConfigurationData::NAME, childNodeList)
        userEmailEventsConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::Event::UserEmailEventsConfigurationView.new(userEmailEventsConfigurationNode)
        @userEmailConfigurationInterface.setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface())
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView_1_2(userEmailConfigurationInterface)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationView
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    

    def getEmailConfigurationInterface()
        return @userEmailConfigurationInterface
    end
    java_overload :getEmailConfigurationInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        emailConfigurationMapping = UserEmailConfigurationMapping.new(@userEmailConfigurationInterface)
        hashMap = emailConfigurationMapping.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, UserEmailConfigurationData::NAME, hashMap)
        userEmailConfigurationInterface = self.getEmailConfigurationInterface()
        userEmailEventsConfigurationInterface = userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface()
        userEmailEventsConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::Event::UserEmailEventsConfigurationView.new(userEmailEventsConfigurationInterface)
        node.appendChild(userEmailEventsConfigurationView.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData" unless const_defined?(:UserEmailEventsConfigurationData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface" unless const_defined?(:UserEmailEventsConfigurationInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfigurationView, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationView" unless const_defined?(:UserEmailEventsConfigurationView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :UserEmailConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration" unless const_defined?(:UserEmailConfiguration, false)
autoload :UserEmailConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData" unless const_defined?(:UserEmailConfigurationData, false)
autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface" unless const_defined?(:UserEmailConfigurationInterface, false)
autoload :UserEmailConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationMapping" unless const_defined?(:UserEmailConfigurationMapping, false)

end; end; end; end; end; end; end

