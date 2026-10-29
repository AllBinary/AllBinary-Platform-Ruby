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

# require "javax/xml/bind/annotation/XmlAccessType"
# require "javax/xml/bind/annotation/XmlAccessorType"
# require "javax/xml/bind/annotation/XmlElement"
# require "javax/xml/bind/annotation/XmlRootElement"
# require "javax/xml/bind/annotation/XmlType"

class InputAutomationModuleConfiguration
    attr_accessor :logUtil, :commonStrings, :className, :name, :inputAutomationModuleInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @className = nil
        @name = nil
        @inputAutomationModuleInterface = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor2(abeClientInformation, node)
        initialize_fields
        self.init(abeClientInformation, node)
    end
    

    def constructor3(abeClientInformation, name, className)
        initialize_fields
        self.setName(name)
        self.setClassName(className)
        self.init(abeClientInformation)
    end
    

    def constructor1(inputAutomationModuleInterface)
        initialize_fields
        self.setInputAutomationModuleInterface(inputAutomationModuleInterface)
        self.setClassName(@inputAutomationModuleInterface.class.name)
    end
    

    # throws Exception
    def init(abeClientInformation, node)
        nodeList = node.getChildNodes()
        if nodeList != nil
            classNameNode = DomSearchHelper.getNode(DynamicObjectData::NAME, nodeList)
            if classNameNode != nil
                self.setClassName(DomNodeHelper.getTextNodeValue(classNameNode))
                self.init(abeClientInformation)
            else
                @logUtil.putF("Class Node Null", self, @commonStrings.INIT)
            end
        else
            @logUtil.putF((InputAutomationData::NAME).to_s + " Node Has No Children", self, "Contructor")
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def init(abeClientInformation)
        begin
            @logUtil.putF("Name: " + getName(), self, @commonStrings.INIT)
            @logUtil.putF("ClassName: " + @className, self, @commonStrings.INIT)
            self.setInputAutomationModuleInterface(AbeFactory.getInstance().getInstance().getInstance(abeClientInformation, getClassName()))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
            raise RuntimeError.new()
        end
    end
    

    # throws Exception
    def toDomNode(document)
        node = document.createElement(InputAutomationModuleData::NAME)
        classNameNode = ModDomHelper.createTextNode(document, DynamicObjectData::NAME, self.getClassName())
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

require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/automation/InputAutomationData"
require "org/allbinary/input/automation/module/InputAutomationModuleData"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

