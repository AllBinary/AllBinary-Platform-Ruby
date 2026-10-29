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
# package org.allbinary.input.automation.module.generic.configuration.profile

# require "java/io/DataOutputStream"
# require "java/io/File"
# require "java/io/FileInputStream"
# require "java/io/FileOutputStream"
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

class GenericProfiles
    include DomNodeInterface
    include DomDocumentMappingInterface
    attr_accessor :logUtil, :hashMap, :profilesDefaultListModelHelper, :fileName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @hashMap = nil
        @profilesDefaultListModelHelper = nil
        @fileName = nil
    end
    

    def initialize(fileName)
        initialize_fields
        @fileName = fileName
        @profilesDefaultListModelHelper = DefaultListModelHelper.new()
        @hashMap = StdUtil.getInstance().createHashMap()
        if File.new(fileName).isFile()
            bytes = Array.new(100000, 0)
            idFile = FileInputStream.new(fileName)
            length = idFile.read(bytes)
            data = bytes.pack("c*").force_encoding("UTF-8")
            endIndex = (data.rindex(">") || -1)
            document = DomDocumentHelper.create(data[0...endIndex + 1])
            nodeList = document.getElementsByTagName(GenericProfilesData::NAME)
            @logUtil.putF("Number Of Profiles Specified: " + (nodeList.getLength()).to_s, self, "Contructor")
            if nodeList != nil
                self.initProfiles(nodeList.item(0))
            else
                raise StandardError.new((GenericProfileActionData::NAME).to_s + " Name Node Node Children")
            end
            @logUtil.putF("Loaded: " + (@hashMap.size()).to_s + " Configuration Profile Actions", self, "Contructor")
        else
            @logUtil.putF("No Generic Profile: " + fileName, self, "Contructor")
        end
        self.getDefaultListModelHelper().initDefaultModelList()
    end
    

    # throws Exception
    def initProfiles(node)
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            profileNameNode = nodeList.item(index)
            if profileNameNode.getNodeName().compareTo(GenericProfileData::NAME) == 0
                genericProfile = GenericProfile.new(profileNameNode)
                @hashMap.put(genericProfile.getName(), genericProfile)
                self.getDefaultListModelHelper().add(genericProfile.getName())
            end
        end
    end
    

    def getDefaultListModelHelper()
        return @profilesDefaultListModelHelper
    end
    

    # throws Exception
    def get(name)
        genericProfile = @hashMap.get(name)
        if genericProfile == nil
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF("No Generic Profile Named: " + name + " availability was: " + (@hashMap).to_s, self, commonStrings.GET)
        end
        return genericProfile
    end
    

    # throws Exception
    def add(name)
        @hashMap.put(name, GenericProfile.new(name))
        self.getDefaultListModelHelper().add(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    

    # throws Exception
    def remove(name)
        @hashMap.remove(name)
        self.getDefaultListModelHelper().remove(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfilesData::NAME)
        set = @hashMap.keySet()
        nameArray = set.toArray()
        size = nameArray.length
        (0...size).each do |index|
            genericProfile = @hashMap.get(nameArray[index])
            node.appendChild(genericProfile.toXmlNode(document))
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
    

    # throws Exception
    def save()
        idFile = FileOutputStream.new(@fileName)
        idOutData = DataOutputStream.new(idFile)
        documentString = XmlDocumentHelper.toString(self.toXmlDoc())
        idOutData.writeBytes(documentString)
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/input/automation/module/DefaultListModelHelper"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfilesData"

class GenericProfiles
    DEFAULT_PROFILES_PATH = "./modules/configs/profiles/"
    DEFAULT_PROFILE_ACTIONS_PATH = (GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "actions/"
    DEFAULT_FILE = (GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "profiles.xml"
end

