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
# require "javax/xml/bind/JAXBElement"
# require "javax/xml/bind/Unmarshaller"
# require "javax/xml/transform/stream/StreamSource"

module ::Org; module Allbinary; module Input; module Automation; module Configuration

class InputAutomationConfigurationFactory
    attr_accessor :logUtil, :inputAutomationConfiguration

    def jfields_org_allbinary_input_automation_configuration_InputAutomationConfigurationFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @inputAutomationConfiguration = nil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_configuration_InputAutomationConfigurationFactory
    end
    

    # throws Exception
    def init(abeClientInformation)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _INPUT_AUTOMATION_CONFIGURATION = "InputAutomationConfiguration"
        file = InputAutomationConfiguration.getFile()
        if file.isFile()
            logUtil.putF("LoadingConfiguration", _INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT)
            jaxbContext = JAXBContext.newInstance(InputAutomationConfiguration)
            unmarshaller = jaxbContext.createUnmarshaller()
            root = unmarshaller.unmarshal(StreamSource.new(::Java::Io::FileInputStream.new(file)), InputAutomationConfiguration)
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
        InputAutomationConfigurationFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputAutomationConfigurationFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InputAutomationConfigurationFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationConfigurationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :InputAutomationConfiguration, "org/allbinary/input/automation/configuration/InputAutomationConfiguration" unless const_defined?(:InputAutomationConfiguration, false)

begin
    InputAutomationConfigurationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

