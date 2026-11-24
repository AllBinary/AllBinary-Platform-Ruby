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
# package org.allbinary.input.automation.configuration

# require "java/io/File"
# require "java/util/List"
# require "javax/xml/bind/JAXBContext"
# require "javax/xml/bind/Marshaller"
# require "javax/xml/bind/annotation/XmlAccessType"
# require "javax/xml/bind/annotation/XmlAccessorType"
# require "javax/xml/bind/annotation/XmlElement"
# require "javax/xml/bind/annotation/XmlRootElement"
# require "javax/xml/bind/annotation/XmlType"

module ::Org; module Allbinary; module Input; module Automation; module Configuration

#name="inputAutomationConfiguration", 
class InputAutomationConfiguration
    attr_accessor :logUtil, :installed, :inputAutomationModuleConfigurationList

    def jfields_org_allbinary_input_automation_configuration_InputAutomationConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @installed = false unless instance_variable_defined?(:@installed)
        @inputAutomationModuleConfigurationList = nil unless instance_variable_defined?(:@inputAutomationModuleConfigurationList)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_configuration_InputAutomationConfiguration
    end
    

    def self.getFile()
        return File.new(FILENAME)
    end
    

    def isInstalled()
        return @installed
    end
    

    def setInstalled(installed)
        @installed = installed
        @logUtil.putF("Installed: " + (installed).to_s, self, "setIntalled")
    end
    

    def getInputAutomationModuleConfigurationList()
        return @inputAutomationModuleConfigurationList
    end
    

    # throws Exception
    def save()
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        file = File.new(FILENAME)
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copy(::Org::Allbinary::Logic::Io::Path::AbPath.new(file.getAbsolutePath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING), ::Org::Allbinary::Logic::Io::Path::AbPath.new((file.getAbsolutePath()).to_s + ".bak.xml", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
        jaxbContext = JAXBContext.newInstance(InputAutomationConfiguration)
        marshaller = jaxbContext.createMarshaller()
        marshaller.setProperty(Marshaller::JAXB_FORMATTED_OUTPUT, true)
        marshaller.marshal(self, document)
        ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentFileHelper.save(::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFile(file), document)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:FILENAME, "InputAutomationConfig.xml")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:FILENAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentFileHelper, "org/allbinary/data/tree/dom/document/DomDocumentFileHelper" unless const_defined?(:DomDocumentFileHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

begin
    InputAutomationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

