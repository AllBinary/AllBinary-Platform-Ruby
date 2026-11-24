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
# package org.allbinary.business.context.configuration

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Context; module Configuration

class ContextConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :contextConfigurationInterface

    def jfields_org_allbinary_business_context_configuration_ContextConfigurationView
        @contextConfigurationInterface = nil unless instance_variable_defined?(:@contextConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of ContextConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1_1(node)
        jfields_org_allbinary_business_context_configuration_ContextConfigurationView
        childNodeList = node.getChildNodes()
        @contextConfigurationInterface = ContextConfiguration.new()
        emailConfigurationNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Communication::Smtp::Configuration::Server::EmailServerConfigurationData::NAME, childNodeList)
        emailServerConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::Server::EmailServerConfigurationView.new(emailConfigurationNode)
        @contextConfigurationInterface.setEmailServerConfigurationInterface(emailServerConfigurationView.getEmailConfigurationInterface())
    end
    

    def jnew_org_allbinary_business_context_configuration_ContextConfigurationView_1_2(contextConfigurationInterface)
        jfields_org_allbinary_business_context_configuration_ContextConfigurationView
        @contextConfigurationInterface = contextConfigurationInterface
    end
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    java_overload :getContextConfigurationInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(ContextConfigurationData.getInstance().NAME)
        emailServerConfigurationView = ::Org::Allbinary::Logic::Communication::Smtp::Configuration::Server::EmailServerConfigurationView.new(self.getContextConfigurationInterface().getEmailServerConfigurationInterface())
        node.appendChild(emailServerConfigurationView.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationData, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData" unless const_defined?(:EmailServerConfigurationData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface" unless const_defined?(:EmailServerConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationView, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationView" unless const_defined?(:EmailServerConfigurationView, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :ContextConfiguration, "org/allbinary/business/context/configuration/ContextConfiguration" unless const_defined?(:ContextConfiguration, false)
autoload :ContextConfigurationData, "org/allbinary/business/context/configuration/ContextConfigurationData" unless const_defined?(:ContextConfigurationData, false)
autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface" unless const_defined?(:ContextConfigurationInterface, false)

end; end; end; end; end

