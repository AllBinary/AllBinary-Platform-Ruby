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


class TransformInfoPropertiesFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoPropertiesFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(node)
        transformInfoChildNodeList = node.getChildNodes()
        transformInfoData = TransformInfoData.getInstance()
        attributes = node.getAttributes()
        attrNode = attributes.getNamedItem(transformInfoData.NAME)
        name = attrNode.getValue()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF((CommonLabels.getInstance().NEXT).to_s + " View Name: " + name, self, "toTransformInfoPropertiesHashMap()")
        end
        labelNode = DomSearchHelper.getNodeNoThrow(transformInfoData.LABEL, transformInfoChildNodeList)
        label = DomNodeHelper.getTextNodesValue(labelNode)
        if label == nil
            label = name
        end
        descriptionNode = DomSearchHelper.getNode(transformInfoData.DESCRIPTION, transformInfoChildNodeList)
        description = DomNodeHelper.getTextNodesValue(descriptionNode)
        objectFileNode = DomSearchHelper.getNode(transformInfoData.OBJECTFILENAME, transformInfoChildNodeList)
        objectFileName = DomNodeHelper.getTextNodeValue(objectFileNode)
        objectConfigFileNode = DomSearchHelper.getNode(transformInfoData.OBJECTCONFIGFILENAME, transformInfoChildNodeList)
        objectConfigFileName = DomNodeHelper.getTextNodeValue(objectConfigFileNode)
        templateFileNode = DomSearchHelper.getNode(transformInfoData.TEMPLATEFILENAME, transformInfoChildNodeList)
        templateFileName = DomNodeHelper.getTextNodeValue(templateFileNode)
        transformInfoProperties = TransformInfoProperties.new(name, label, description, objectFileName, objectConfigFileName, templateFileName)
        return transformInfoProperties
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/w3c/dom/Attr"
require "org/w3c/dom/NamedNodeMap"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoProperties"

class TransformInfoPropertiesFactory
    @@instance = TransformInfoPropertiesFactory.new()
end

