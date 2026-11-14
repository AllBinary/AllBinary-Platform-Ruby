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
# require "java/io/FileInputStream"
# require "java/util/List"

class InputAutomationModuleConfigurations
    attr_accessor :logUtil, :hashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @hashMap = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor2(abeClientInformation, file)
        initialize_fields
        self.setHashMap(HashMap.new())
        bytes = Array.new(100000, 0)
        idFile = FileInputStream.new(file)
        length = idFile.read(bytes)
        data = bytes.pack("c*").force_encoding("UTF-8")
        endIndex = (data.rindex(">") || -1)
        document = DomDocumentHelper.create(data[0...endIndex + 1])
        nodeList = document.getElementsByTagName(NewInputAutomationModulesData::NAME)
        if nodeList.getLength() > 0
            nameNodeList = document.getElementsByTagName(InputAutomationModuleData::NAME)
            @logUtil.putF("Number Of Module(s) Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
            (0...nameNodeList.getLength()).each do |index|
                node = nameNodeList.item(index)
                self.add(InputAutomationModuleConfiguration.new(abeClientInformation, node))
            end
        end
    end
    

    def constructor2(abeClientInformation, document)
        initialize_fields
        self.setHashMap(HashMap.new())
        nameNodeList = document.getElementsByTagName(InputAutomationModuleData::NAME)
        @logUtil.putF("Number Of Module(s) Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
        (0...nameNodeList.getLength()).each do |index|
            node = nameNodeList.item(index)
            self.add(InputAutomationModuleConfiguration.new(abeClientInformation, node))
        end
    end
    

    def constructor1(inputAutomationModuleConfigurationList)
        initialize_fields
        self.setHashMap(HashMap.new())
        size = inputAutomationModuleConfigurationList.size()
        inputAutomationModuleConfiguration = nil
        (0...size).each do |index|
            inputAutomationModuleConfiguration = inputAutomationModuleConfigurationList.get(index)
            self.add(inputAutomationModuleConfiguration)
        end
    end
    

    def constructor0()
        initialize_fields
        self.setHashMap(HashMap.new())
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

autoload :HashMap, "java/util/HashMap"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData"
autoload :NewInputAutomationModulesData, "org/allbinary/input/automation/module/NewInputAutomationModulesData"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"

