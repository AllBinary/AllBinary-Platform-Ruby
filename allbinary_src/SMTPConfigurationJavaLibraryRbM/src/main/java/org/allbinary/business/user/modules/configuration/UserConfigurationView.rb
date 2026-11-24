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
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

class UserConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :userConfigurationInterface

    def jfields_org_allbinary_business_user_modules_configuration_UserConfigurationView
        @userConfigurationInterface = nil unless instance_variable_defined?(:@userConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of UserConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1_1(node)
        jfields_org_allbinary_business_user_modules_configuration_UserConfigurationView
        @userConfigurationInterface = UserConfiguration.new()
        childNodeList = node.getChildNodes()
        emailConfigurationNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::UserEmailConfigurationData::NAME, childNodeList)
        userEmailConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::UserEmailConfigurationView.new(emailConfigurationNode)
        userEmailConfigurationInterface = userEmailConfigurationView.getEmailConfigurationInterface()
        @userConfigurationInterface.setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        timeCreatedNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED, childNodeList)
        timeCreatedView = ::Org::Allbinary::Business::TimePackage::Created::TimeCreatedView.new(timeCreatedNode)
        @userConfigurationInterface.setTimeCreated(timeCreatedView.getTimeCreated())
        timeLastModifiedNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, childNodeList)
        timeLastModifiedView = ::Org::Allbinary::Business::TimePackage::Modified::TimeLastModifiedView.new(timeLastModifiedNode)
        @userConfigurationInterface.setTimeLastModified(timeLastModifiedView.getTimeLastModified())
    end
    

    def jnew_org_allbinary_business_user_modules_configuration_UserConfigurationView_1_2(userConfigurationInterface)
        jfields_org_allbinary_business_user_modules_configuration_UserConfigurationView
        @userConfigurationInterface = userConfigurationInterface
    end
    

    def getUserConfigurationInterface()
        return @userConfigurationInterface
    end
    java_overload :getUserConfigurationInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(UserConfigurationData::NAME)
        userEmailConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::User::UserEmailConfigurationView.new(@userConfigurationInterface.getUserEmailConfigurationInterface())
        node.appendChild(userEmailConfigurationView.toXmlNode(document))
        timeCreatedView = ::Org::Allbinary::Business::TimePackage::Created::TimeCreatedView.new(@userConfigurationInterface.getTimeCreated())
        node.appendChild(timeCreatedView.toXmlNode(document))
        timeLastModifiedView = ::Org::Allbinary::Business::TimePackage::Modified::TimeLastModifiedView.new(@userConfigurationInterface.getTimeLastModified())
        node.appendChild(timeLastModifiedView.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; module Created; autoload :TimeCreatedView, "org/allbinary/business/time/created/TimeCreatedView" unless const_defined?(:TimeCreatedView, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; module Modified; autoload :TimeLastModifiedView, "org/allbinary/business/time/modified/TimeLastModifiedView" unless const_defined?(:TimeLastModifiedView, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData" unless const_defined?(:UserEmailConfigurationData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface" unless const_defined?(:UserEmailConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfigurationView, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationView" unless const_defined?(:UserEmailConfigurationView, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :UserConfiguration, "org/allbinary/business/user/modules/configuration/UserConfiguration" unless const_defined?(:UserConfiguration, false)
autoload :UserConfigurationData, "org/allbinary/business/user/modules/configuration/UserConfigurationData" unless const_defined?(:UserConfigurationData, false)
autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface" unless const_defined?(:UserConfigurationInterface, false)

end; end; end; end; end; end

