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
# require "java/io/FileInputStream"
# require "java/util/List"
# require "javax/xml/bind/JAXBContext"
# require "javax/xml/bind/JAXBElement"
# require "javax/xml/bind/Unmarshaller"
# require "javax/xml/transform/stream/StreamSource"

class InputAutomationConfigurationFactory
    attr_accessor :logUtil, :inputAutomationConfiguration

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputAutomationConfiguration = nil
    end
    

    def self.getInstance()
        return InputAutomationConfigurationFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def init(abeClientInformation)
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _INPUT_AUTOMATION_CONFIGURATION = "InputAutomationConfiguration"
        file = InputAutomationConfiguration.getFile()
        if file.isFile()
            logUtil.putF("LoadingConfiguration", _INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT)
            jaxbContext = JAXBContext.newInstance(InputAutomationConfiguration)
            unmarshaller = jaxbContext.createUnmarshaller()
            root = unmarshaller.unmarshal(StreamSource.new(FileInputStream.new(file)), InputAutomationConfiguration)
            @inputAutomationConfiguration = root.getValue()
            inputAutomationModuleConfigurationList = @inputAutomationConfiguration.getInputAutomationModuleConfigurationList()
            logUtil.putF("isInstalled: " + (@inputAutomationConfiguration.isInstalled()).to_s + " inputAutomationModuleConfigurationList: " + (inputAutomationModuleConfigurationList).to_s, _INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT)
            if inputAutomationModuleConfigurationList != nil
                size = inputAutomationModuleConfigurationList.size()
                inputAutomationModuleConfiguration = nil
                (0...size).each do |index|
                    inputAutomationModuleConfiguration = inputAutomationModuleConfigurationList.get(index)
                    inputAutomationModuleConfiguration.init(abeClientInformation)
                end
            end
            logUtil.putF("LoadedConfiguration", _INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT)
        else
            logUtil.putF("New Configuration", _INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT)
            @inputAutomationConfiguration = InputAutomationConfiguration.new()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/configuration/InputAutomationConfiguration"

class InputAutomationConfigurationFactory
    @@instance = InputAutomationConfigurationFactory.new()
end

