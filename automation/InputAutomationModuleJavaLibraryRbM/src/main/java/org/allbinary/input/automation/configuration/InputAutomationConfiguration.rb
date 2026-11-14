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

#name="inputAutomationConfiguration", 
class InputAutomationConfiguration
    attr_accessor :logUtil, :installed, :inputAutomationModuleConfigurationList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @installed = false
        @inputAutomationModuleConfigurationList = nil
    end
    

    def initialize()
        initialize_fields
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
        document = DomDocumentHelper.create()
        file = File.new(FILENAME)
        FileUtil.getInstance().copy(AbPath.new(file.getAbsolutePath(), StringUtil.getInstance().EMPTY_STRING), AbPath.new((file.getAbsolutePath()).to_s + ".bak.xml", StringUtil.getInstance().EMPTY_STRING))
        jaxbContext = JAXBContext.newInstance(InputAutomationConfiguration)
        marshaller = jaxbContext.createMarshaller()
        marshaller.setProperty(Marshaller::JAXB_FORMATTED_OUTPUT, true)
        marshaller.marshal(self, document)
        DomDocumentFileHelper.save(FileWrapperUtil.wrapFile(file), document)
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

autoload :DomDocumentFileHelper, "org/allbinary/data/tree/dom/document/DomDocumentFileHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil"
autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Document, "org/w3c/dom/Document"

begin
    InputAutomationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

