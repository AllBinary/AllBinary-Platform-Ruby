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
end

require "org/allbinary/data/tree/dom/document/DomDocumentFileHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Document"

class InputAutomationConfiguration
    FILENAME = "InputAutomationConfig.xml"
end

