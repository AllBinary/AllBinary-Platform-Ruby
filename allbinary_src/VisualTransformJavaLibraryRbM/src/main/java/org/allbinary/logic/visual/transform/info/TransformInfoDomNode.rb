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
# package org.allbinary.logic.visual.transform.info


class TransformInfoDomNode
    attr_accessor :logUtil, :transformInfoInterface, :mappedName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @transformInfoInterface = nil
        @mappedName = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Constructing TransformInfo From TransformInfoDomNode: " + (node.getNodeName()).to_s, self, "TransformInfoDomNode(Node node)")
        end
        transformInfoData = TransformInfoData.getInstance()
        attributes = node.getAttributes()
        attrNode = attributes.getNamedItem(transformInfoData.NAME)
        name = attrNode.getValue()
        nodeList = node.getChildNodes()
        if nodeList.getLength() > 1
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Constructing Complete TransformInfo Node For: ")
                stringBuffer.append(name)
                stringBuffer.append(" with ")
                stringBuffer.appendint((nodeList.getLength()).to_i)
                stringBuffer.append(" children")
                @logUtil.putF(stringBuffer.to_s, self, "TransformInfoObjectConfigComponent(Node node)")
            end
            objectFileNameNode = DomSearchHelper.getNode(transformInfoData.OBJECTFILENAME, nodeList)
            objectFileName = DomNodeHelper.getTextNodeValue(objectFileNameNode)
            objectConfigFileNameNode = DomSearchHelper.getNode(transformInfoData.OBJECTCONFIGFILENAME, nodeList)
            objectConfigFileName = DomNodeHelper.getTextNodeValue(objectConfigFileNameNode)
            templateFileNameNode = DomSearchHelper.getNode(transformInfoData.TEMPLATEFILENAME, nodeList)
            templateFileName = DomNodeHelper.getTextNodeValue(templateFileNameNode)
            dataFileNameNode = DomSearchHelper.getNode(transformInfoData.DATAFILENAME, nodeList)
            dataFileName = DomNodeHelper.getTextNodeValue(dataFileNameNode)
            @transformInfoInterface = TransformInfo.new(name, objectFileName, objectConfigFileName, templateFileName, dataFileName)
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Constructing Partial TransformInfo Node For: ")
                stringBuffer.append(name)
                stringBuffer.append(" with ")
                stringBuffer.appendint((nodeList.getLength()).to_i)
                stringBuffer.append(" children")
                @logUtil.putF(stringBuffer.to_s, self, "TransformInfoObjectConfigComponent(Node node)")
            end
            @transformInfoInterface = TransformInfo.new(name)
        end
        templateAttrNode = attributes.getNamedItem(transformInfoData.MAPPED)
        if templateAttrNode != nil
            @mappedName = templateAttrNode.getValue()
        else
            @mappedName = self.getTransformInfoInterface().getName()
        end
    end
    

    def constructor1(transformInfoInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @mappedName = transformInfoInterface.getName()
    end
    

    def constructor2(transformInfoInterface, mappedName)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @mappedName = mappedName
    end
    

    def constructor2(name, mappedName)
        initialize_fields
        @transformInfoInterface = TransformInfo.new(name)
        @mappedName = mappedName
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def getMappedName()
        return @mappedName
    end
    

    def getReplaceKey()
        stringBuffer = StringMaker.new()
        stringBuffer.append("<transform:component name=\"")
        stringBuffer.append("body")
        stringBuffer.append("\"/>")
        key = stringBuffer.to_s
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Component Key: " + key, self, "getReplaceKey()")
        end
        return key
    end
end

require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/w3c/dom/Attr"
require "org/w3c/dom/NamedNodeMap"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

