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


class GenericProfile
    attr_accessor :logUtil, :name, :vector, :genericProfileActions

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @vector = nil
        @genericProfileActions = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        self.setName(DomNodeHelper.getTextNodeValue(node))
        @vector = BasicArrayListD.new()
        nodeList = node.getChildNodes()
        @logUtil.putF("Name: " + self.getName() + " Child Nodes: " + (nodeList.getLength()).to_s, self, "Contructor")
        (0...nodeList.getLength()).each do |index|
            profileNode = nodeList.item(index)
            if profileNode.getNodeName().compareTo(GenericProfileDataWorkerData::NAME) == 0
                genericProfileDataWorkerType = GenericProfileDataWorkerType.getInstance(profileNode)
                @logUtil.putF("Adding GenericProfileDataWorkerType: " + genericProfileDataWorkerType.to_s, self, "Contructor")
                @vector.add(genericProfileDataWorkerType)
            end
        end
    end
    

    def constructor1(name)
        initialize_fields
        self.setName(name)
        @vector = BasicArrayListD.new()
    end
    

    def getGenericProfileDataWorkerTypeVector()
        return @vector
    end
    

    def add(genericProfileDataWorkerType)
        if !@vector.contains(genericProfileDataWorkerType)
            @vector.add(genericProfileDataWorkerType)
        end
    end
    

    def remove(genericProfileDataWorkerType)
        @vector.remove(genericProfileDataWorkerType)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createTextNode(document, GenericProfileData::NAME, @name)
        size = @vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = @vector.get(index)
            node.appendChild(genericProfileDataWorkerType.toXmlNode(document))
        end
        return node
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"

