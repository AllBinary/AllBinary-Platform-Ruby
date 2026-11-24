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
# package org.allbinary.logic.communication.smtp.configuration.server

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server

class EmailServerConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :emailServerConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView
        @emailServerConfigurationInterface = nil unless instance_variable_defined?(:@emailServerConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of EmailServerConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1_1(node)
        jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView
        childNodeList = node.getChildNodes()
        server = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::SERVER, childNodeList)
        accountName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::ACCOUNT, childNodeList)
        password = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::PASSWORD, childNodeList)
        @emailServerConfigurationInterface = EmailServerConfiguration.new(accountName, password, server)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView_1_2(emailServerConfigurationInterface)
        jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfigurationView
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    

    def getEmailConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    java_overload :getEmailConfigurationInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        emailConfigurationMapping = EmailServerConfigurationMapping.new(@emailServerConfigurationInterface)
        hashMap = emailConfigurationMapping.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, EmailServerConfigurationData::NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :EmailServerConfiguration, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration" unless const_defined?(:EmailServerConfiguration, false)
autoload :EmailServerConfigurationData, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData" unless const_defined?(:EmailServerConfigurationData, false)
autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface" unless const_defined?(:EmailServerConfigurationInterface, false)
autoload :EmailServerConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationMapping" unless const_defined?(:EmailServerConfigurationMapping, false)

end; end; end; end; end; end; end

