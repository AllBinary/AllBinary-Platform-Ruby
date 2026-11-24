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
# package org.allbinary.logic.communication.ftp.configuration

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Ftp; module Configuration

class FtpConfigurationView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :ftpConfigurationInterface

    def jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView
        @ftpConfigurationInterface = nil unless instance_variable_defined?(:@ftpConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1(*args)
        else raise ArgumentError, "No constructor of FtpConfigurationView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1_1(node)
        jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView
        self.setFtpConfigurationInterface(FtpConfiguration.new())
        chileNodeList = node.getChildNodes()
        server = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(FtpConfigurationData::SERVER, chileNodeList)
        self.getFtpConfigurationInterface().setServer(server)
        userName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(FtpConfigurationData::USERNAME, chileNodeList)
        self.getFtpConfigurationInterface().setUserName(userName)
        password = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(FtpConfigurationData::PASSWORD, chileNodeList)
        self.getFtpConfigurationInterface().setPassword(password)
        path = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(FtpConfigurationData::PATH, chileNodeList)
        self.getFtpConfigurationInterface().setPath(path)
    end
    

    def jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView_1_2(ftpConfigurationInterface)
        jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationView
        self.setFtpConfigurationInterface(ftpConfigurationInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        ftpConfigurationMapping = FtpConfigurationMapping.new(self.getFtpConfigurationInterface())
        hashMap = ftpConfigurationMapping.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, FtpConfigurationData::NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
    

    def getFtpConfigurationInterface()
        return @ftpConfigurationInterface
    end
    java_overload :getFtpConfigurationInterface, 0
    

    def setFtpConfigurationInterface(ftpConfigurationInterface)
        @ftpConfigurationInterface = ftpConfigurationInterface
    end
    java_overload :setFtpConfigurationInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :FtpConfiguration, "org/allbinary/logic/communication/ftp/configuration/FtpConfiguration" unless const_defined?(:FtpConfiguration, false)
autoload :FtpConfigurationData, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData" unless const_defined?(:FtpConfigurationData, false)
autoload :FtpConfigurationInterface, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface" unless const_defined?(:FtpConfigurationInterface, false)
autoload :FtpConfigurationMapping, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationMapping" unless const_defined?(:FtpConfigurationMapping, false)

end; end; end; end; end; end

