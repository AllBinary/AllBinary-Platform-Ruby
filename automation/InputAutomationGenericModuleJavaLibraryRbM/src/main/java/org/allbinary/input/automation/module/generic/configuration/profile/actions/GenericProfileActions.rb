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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions

# require "java/io/DataOutputStream"
# require "java/io/File"
# require "java/io/FileInputStream"
# require "java/io/FileOutputStream"
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

class GenericProfileActions
    include DomNodeInterface
    include DomDocumentMappingInterface
    attr_accessor :logUtil, :commonFileStrings, :name, :genericProfileActionsJPanel, :actionsDefaultListModelHelper, :hashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonFileStrings = CommonDataFileStrings.getInstance()
        @name = nil
        @genericProfileActionsJPanel = nil
        @actionsDefaultListModelHelper = nil
        @hashMap = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor2(genericProfileActionsJPanel, name)
        initialize_fields
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.load()
    end
    

    def constructor3(genericProfileActionsJPanel, abPath, name)
        initialize_fields
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.load()
    end
    

    def constructor3(genericProfileActionsJPanel, fileInputStream, name)
        initialize_fields
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.fileInit(fileInputStream)
    end
    

    # throws Exception
    def init(genericProfileActionsJPanel)
        self.setGenericProfileActionsJPanel(genericProfileActionsJPanel)
        @actionsDefaultListModelHelper = DefaultListModelHelper.new()
        self.setHashMap(HashMap.new())
    end
    

    # throws Exception
    def save()
        idFile = FileOutputStream.new((GenericProfileActions::DEFAULT_PROFILE_ACTIONS_PATH).to_s + getName() + (@commonFileStrings._XML).to_s)
        idOutData = DataOutputStream.new(idFile)
        idOutData.writeBytes(XmlDocumentHelper.toString(self.toXmlDoc()))
    end
    

    def getFile(name)
        fileName = DEFAULT_PROFILE_ACTIONS_PATH + name + (@commonFileStrings._XML).to_s
        return File.new(fileName)
    end
    

    # throws Exception
    def load()
        file = self.getFile(getName())
        if file.isFile()
            idFile = FileInputStream.new(file)
            self.fileInit(idFile)
        else
            @logUtil.putF("No Profile: " + (file.getAbsolutePath()).to_s, self, "Contructor")
        end
    end
    

    # throws Exception
    def fileInit(fileInputStream)
        bytes = Array.new(100000, 0)
        length = fileInputStream.read(bytes)
        data = bytes.pack("c*").force_encoding("UTF-8")
        endIndex = (data.rindex(">") || -1)
        document = DomDocumentHelper.create(data[0...endIndex + 1])
        nameNodeList = document.getElementsByTagName(GenericProfileActionsData::NAME)
        @logUtil.putF("Number Of Profiles Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
        (0...nameNodeList.getLength()).each do |index|
            node = nameNodeList.item(index)
            nodeList = node.getChildNodes()
            if nodeList != nil
                self.initActions(nodeList)
            else
                raise StandardError.new((GenericProfileActionData::NAME).to_s + " Name Node Node Children")
            end
        end
        @logUtil.putF("Loaded: " + (self.getHashMap().size()).to_s + " Configuration Profile Action(s)", self, "Contructor")
        self.getDefaultListModelHelper().initDefaultModelList()
    end
    

    # throws Exception
    def initActions(nodeList)
        (0...nodeList.getLength()).each do |index|
            actionNode = nodeList.item(index)
            if actionNode != nil
                genericConfigurationProfileAction = GenericProfileAction.new(self.getGenericProfileActionsJPanel().getGenericProfileActionJPanel(), actionNode)
                self.getHashMap().put(genericConfigurationProfileAction.getName(), genericConfigurationProfileAction)
                self.getDefaultListModelHelper().add(genericConfigurationProfileAction.getName())
            else
                raise StandardError.new((GenericProfileActionData::NAME).to_s + " Node Null")
            end
        end
    end
    

    def getDefaultListModelHelper()
        return @actionsDefaultListModelHelper
    end
    

    def getAction(string)
        return self.getHashMap().get(string)
    end
    

    # throws Exception
    def add(name)
        genericProfileAction = GenericProfileAction.new(name)
        self.getHashMap().put(genericProfileAction.getName(), genericProfileAction)
        self.getDefaultListModelHelper().add(genericProfileAction.getName())
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    

    # throws Exception
    def remove(name)
        self.getHashMap().remove(name)
        self.getDefaultListModelHelper().remove(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionsData::NAME)
        set = self.getHashMap().keySet()
        actionNameArray = set.toArray()
        size = actionNameArray.length
        (0...size).each do |index|
            nextActionName = actionNameArray[index]
            nextGenericProfileAction = self.getAction(nextActionName)
            node.appendChild(nextGenericProfileAction.toXmlNode(document))
        end
        return node
    end
    

    # throws Exception
    def toXmlDoc()
        document = DomDocumentHelper.create()
        node = self.toXmlNode(document)
        document.appendChild(node)
        return document
    end
    

    def getGenericProfileActionsJPanel()
        return @genericProfileActionsJPanel
    end
    

    def setGenericProfileActionsJPanel(genericProfileActionsJPanel)
        @genericProfileActionsJPanel = genericProfileActionsJPanel
    end
    

    def getHashMap()
        return @hashMap
    end
    

    def setHashMap(hashMap)
        @hashMap = hashMap
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/input/automation/module/DefaultListModelHelper"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/CommonDataFileStrings"
require "org/allbinary/logic/io/path/AbPath"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsData"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel"

class GenericProfileActions
    DEFAULT_PROFILE_ACTIONS_PATH = (GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "actions/"
end

