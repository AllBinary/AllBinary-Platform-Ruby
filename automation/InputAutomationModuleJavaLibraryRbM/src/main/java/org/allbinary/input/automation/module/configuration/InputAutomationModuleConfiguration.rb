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

require "java/lang/JavaClass"
# require "javax/xml/bind/annotation/XmlAccessType"
# require "javax/xml/bind/annotation/XmlAccessorType"
# require "javax/xml/bind/annotation/XmlElement"
# require "javax/xml/bind/annotation/XmlRootElement"
# require "javax/xml/bind/annotation/XmlType"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration

class InputAutomationModuleConfiguration
    attr_accessor :logUtil, :commonStrings, :className, :name, :inputAutomationModuleInterface

    def jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @className = nil unless instance_variable_defined?(:@className)
        @name = nil unless instance_variable_defined?(:@name)
        @inputAutomationModuleInterface = nil unless instance_variable_defined?(:@inputAutomationModuleInterface)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_0(*args)
        when 2 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_2(*args)
        when 3 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_3(*args)
        when 1 then jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_1(*args)
        else raise ArgumentError, "No constructor of InputAutomationModuleConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_0()
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_2(abeClientInformation, node)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration
        self.init(abeClientInformation, node)
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_3(abeClientInformation, name, className)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration
        self.setName(name)
        self.setClassName(className)
        self.init(abeClientInformation)
    end
    

    def jnew_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration_1(inputAutomationModuleInterface)
        jfields_org_allbinary_input_automation_module_configuration_InputAutomationModuleConfiguration
        self.setInputAutomationModuleInterface(inputAutomationModuleInterface)
        self.setClassName(@inputAutomationModuleInterface.class.java_name)
    end
    

    # throws Exception
    def init_j2(abeClientInformation, node)
        nodeList = node.getChildNodes()
        if nodeList != nil
            classNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::DynamicObjectData::NAME, nodeList)
            if classNameNode != nil
                self.setClassName(::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(classNameNode))
                self.init(abeClientInformation)
            else
                @logUtil.putF("Class Node Null", self, @commonStrings.INIT)
            end
        else
            @logUtil.putF((::Org::Allbinary::Input::Automation::InputAutomationData::NAME).to_s + " Node Has No Children", self, "Contructor")
        end
    end
    

    def init_j1(abeClientInformation)
        begin
            @logUtil.putF("Name: " + getName(), self, @commonStrings.INIT)
            @logUtil.putF("ClassName: " + @className, self, @commonStrings.INIT)
            self.setInputAutomationModuleInterface(::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance().getInstance(abeClientInformation, getClassName()))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
            raise RuntimeError.new()
        end
    end

    def init(*java_overload_args)
        return init_j2(*java_overload_args) if java_overload_args.length == 2
        return init_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method init takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def toDomNode(document)
        node = document.createElement(::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleData::NAME)
        classNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, ::Org::Allbinary::Business::DynamicObjectData::NAME, self.getClassName())
        node.appendChild(classNameNode)
        return node
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @logUtil.putF("Name: " + name, self, "setName")
        @name = name
    end
    

    def getClassName()
        return @className
    end
    

    def setClassName(className)
        @logUtil.putF("ClassName : " + className, self, "setClassName")
        @className = className
    end
    

    def getInputAutomationModuleInterface()
        return @inputAutomationModuleInterface
    end
    

    def setInputAutomationModuleInterface(inputAutomationModuleInterface)
        @logUtil.putF("InputAutomationModuleFactoryInterface : " + (inputAutomationModuleInterface).to_s, self, "setInputAutomationModuleInterface")
        @inputAutomationModuleInterface = inputAutomationModuleInterface
        self.setName(@inputAutomationModuleInterface.getName())
    end
end

module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :InputAutomationData, "org/allbinary/input/automation/InputAutomationData" unless const_defined?(:InputAutomationData, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData" unless const_defined?(:InputAutomationModuleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

end; end; end; end; end; end

