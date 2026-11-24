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
# package org.allbinary.input.automation.module.configuration

# require "java/io/File"
# require "java/util/List"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration

class InputAutomationModuleConfigurations
    attr_accessor :logUtil, :hashMap

    def jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2(*args)
        when 1 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_1(*args)
        when 0 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_0(*args)
        else raise ArgumentError, "No constructor of InputAutomationModuleConfigurations takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2(*java_overload_args)
        return jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2_1(abeClientInformation, file)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations
        self.setHashMap(::Java::Util::HashMap.new())
        bytes = (Array.new(100000, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        idFile = ::Java::Io::FileInputStream.new(file)
        length = idFile.read(bytes)
        data = bytes.pack("c*").force_encoding("UTF-8")
        endIndex = (data.rindex(">") || -1)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data[0...endIndex + 1])
        nodeList = document.getElementsByTagName(::Org::Allbinary::Input::Automation::ModulePackage::NewInputAutomationModulesData::NAME)
        if nodeList.getLength() > 0
            nameNodeList = document.getElementsByTagName(::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleData::NAME)
            @logUtil.putF("Number Of Module(s) Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
            (0...nameNodeList.getLength()).each do |index|
                node = nameNodeList.item(index)
                self.add(InputAutomationModuleConfiguration.new(abeClientInformation, node))
            end
        end
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_2_2(abeClientInformation, document)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations
        self.setHashMap(::Java::Util::HashMap.new())
        nameNodeList = document.getElementsByTagName(::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleData::NAME)
        @logUtil.putF("Number Of Module(s) Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
        (0...nameNodeList.getLength()).each do |index|
            node = nameNodeList.item(index)
            self.add(InputAutomationModuleConfiguration.new(abeClientInformation, node))
        end
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_1(inputAutomationModuleConfigurationList)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations
        self.setHashMap(::Java::Util::HashMap.new())
        size = inputAutomationModuleConfigurationList.size()
        inputAutomationModuleConfiguration = nil
        (0...size).each do |index|
            inputAutomationModuleConfiguration = inputAutomationModuleConfigurationList.get(index)
            self.add(inputAutomationModuleConfiguration)
        end
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations_0()
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfigurations
        self.setHashMap(::Java::Util::HashMap.new())
    end
    

    def add(inputAutomationModuleConfiguration)
        self.getHashMap().put(inputAutomationModuleConfiguration.getClassName(), inputAutomationModuleConfiguration)
    end
    

    def remove(inputAutomationModuleConfiguration)
        self.getHashMap().remove(inputAutomationModuleConfiguration.getClassName())
    end
    

    def getHashMap()
        return @hashMap
    end
    

    def setHashMap(hashMap)
        @hashMap = hashMap
    end
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData" unless const_defined?(:InputAutomationModuleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :NewInputAutomationModulesData, "org/allbinary/input/automation/module/NewInputAutomationModulesData" unless const_defined?(:NewInputAutomationModulesData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false)

end; end; end; end; end; end

