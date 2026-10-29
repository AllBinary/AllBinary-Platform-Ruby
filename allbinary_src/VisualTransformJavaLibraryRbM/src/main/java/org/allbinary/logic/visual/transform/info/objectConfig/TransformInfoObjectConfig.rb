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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

class TransformInfoObjectConfig
    include TransformInfoObjectConfigInterface
    attr_accessor :logUtil, :commonStrings, :ownerTransformInfoInterface, :document, :outputTypeName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @ownerTransformInfoInterface = nil
        @document = nil
        @outputTypeName = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        initialize_fields
        @ownerTransformInfoInterface = transformInfoInterface
        self.createDocument()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface)")
        end
    end
    

    def constructor2(transformInfoInterface, document)
        initialize_fields
        @ownerTransformInfoInterface = transformInfoInterface
        @document = document
        node = DomSearchHelper.getNodeNoThrow(OutputTypeData.getInstance().NAME, self.getRootNode().getChildNodes())
        if node != nil
            self.setOutputTypeName(DomNodeHelper.getTextNodeValue(node))
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface, Document)")
        end
    end
    

    def constructor3(transformInfoInterface, name, type)
        initialize_fields
        @ownerTransformInfoInterface = transformInfoInterface
        self.createDocument()
        configNameAttr = @document.createAttribute(TransformInfoObjectConfigData.getInstance().NAME)
        configNameAttr.setValue(name)
        objectConfigNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        objectConfigNode.appendChild(configNameAttr)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface, name, type)")
        end
    end
    

    def createDocument()
        @document = DomDocumentHelper.create()
        objectConfigNode = @document.createElement(TransformInfoObjectConfigData.getInstance().NAME)
        @document.appendChild(objectConfigNode)
    end
    

    def getTransformInfoInterface()
        return @ownerTransformInfoInterface
    end
    

    # throws Exception
    def toXmlDoc()
        return @document
    end
    

    def setDocument(document)
        @document = document
    end
    

    def containsView(transformInfoInterface)
        objectConfigNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        viewNodeList = objectConfigNode.getChildNodes()
        numberOfViews = viewNodeList.getLength()
        (0...numberOfViews).each do |index|
            viewNode = viewNodeList.item(index)
            viewAttributes = viewNode.getAttributes()
            attrNode = viewAttributes.getNamedItem(TransformInfoData.getInstance().NAME)
            if transformInfoInterface.getName().compareTo(attrNode.getValue()) == 0
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def getTemplateAttributes()
        componentNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        return componentNode.getAttributes()
    end
    

    # throws Exception
    def getName()
        attrNode = self.getTemplateAttributes().getNamedItem(TransformInfoObjectConfigData.getInstance().NAME)
        return attrNode.getValue()
    end
    

    # throws Exception
    def setName(name)
        attrNode = self.getTemplateAttributes().getNamedItem(TransformInfoObjectConfigData.getInstance().NAME)
        attrNode.setValue(name)
    end
    

    # throws Exception
    def getNodeVector(nodeName)
        componentsNodeList = @document.getElementsByTagName(nodeName)
        if componentsNodeList != nil && componentsNodeList.getLength() > 0
            viewNodeVector = DomSearchHelper.getAllNodes(TransformInfoData.getInstance().NAME, componentsNodeList.item(0).getChildNodes())
            numberOfViews = viewNodeVector.size()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Number Of ")
                stringBuffer.append(nodeName)
                stringBuffer.append(" Nodes: ")
                stringBuffer.appendint(numberOfViews)
                @logUtil.putF(stringBuffer.to_s, self, "getNodeVector(nodename)")
            end
            return viewNodeVector
        end
        return BasicArrayListD.new()
    end
    

    # throws Exception
    def getTransformDomNodes(nodeName)
        viewVector = BasicArrayListD.new()
        viewNodeVector = self.getNodeVector(nodeName)
        size = viewNodeVector.size()
        (0...size).each do |index|
            viewNode = viewNodeVector.get(index)
            viewVector.add(TransformInfoDomNode.new(viewNode))
        end
        return viewVector
    end
    

    # throws Exception
    def getTransforms(nodeName)
        viewVector = BasicArrayListD.new()
        viewNodeVector = self.getNodeVector(nodeName)
        size = viewNodeVector.size()
        (0...size).each do |index|
            viewNode = viewNodeVector.get(index)
            viewVector.add(TransformInfoDomNode.new(viewNode).getTransformInfoInterface())
        end
        return viewVector
    end
    

    # throws Exception
    def getTransformsGroup(group)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started: " + group, self, "getTransformsGroup()")
        end
        viewVector = BasicArrayListD.new()
        _GROUP = TransformInfosData.getInstance().GROUP
        componentsNodeList = @document.getElementsByTagName(_GROUP)
        if componentsNodeList != nil && componentsNodeList.getLength() > 0
            componentsNode = componentsNodeList.item(0)
            length = componentsNodeList.getLength()
            (0...length).each do |index|
                node = componentsNodeList.item(index)
                attributes = node.getAttributes()
                attrNode = attributes.getNamedItem(_GROUP)
                value = attrNode.getValue()
                if (value <=> group) == 0
                    componentsNode = node
                    break
                end
            end
            viewNodeVector = DomSearchHelper.getAllNodes(TransformInfoData.getInstance().NAME, componentsNode.getChildNodes())
            numberOfViews = viewNodeVector.size()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Number Of Nodes: " + (numberOfViews).to_s, self, "getTransformsGroup()")
            end
            size = viewNodeVector.size()
            (0...size).each do |index|
                viewNode = viewNodeVector.get(index)
                viewVector.add(TransformInfoDomNode.new(viewNode))
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                if componentsNodeList == nil
                    @logUtil.putF("Number Of Nodes: NULL", self, "getTransformsGroup()")
                else
                    @logUtil.putF("Number Of Nodes: 0", self, "getTransformsGroup()")
                end
            end
        end
        return viewVector
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getTransformDomNodes()
        return self.getTransformDomNodes(TransformInfosData.getInstance().GROUP)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getTransforms()
        return self.getTransforms(TransformInfosData.getInstance().NAME)
    end
    

    # throws Exception
    def getGroupTransforms()
        return self.getTransforms(TransformInfosData.getInstance().GROUP)
    end
    

    # throws Exception
    def getParentTransforms()
        return self.getTransforms(TransformInfoData.getInstance().PARENT)
    end
    

    def getRootNode()
        return @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
    end
    

    def setOutputTypeName(outputTypeName)
        @outputTypeName = outputTypeName
    end
    

    # throws Exception
    def getOutputTypeName()
        return @outputTypeName
    end
    

    # throws Exception
    def getInputOutputTypeName()
        node = DomSearchHelper.getNode(InputOutputTypeData.getInstance().NAME, self.getRootNode().getChildNodes())
        return DomNodeHelper.getTextNodeValue(node)
    end
    

    # throws Exception
    def getInputOutputTypeFile()
        node = DomSearchHelper.getNode(InputOutputTypeData.getInstance().FILE, self.getRootNode().getChildNodes())
        return DomNodeHelper.getTextNodeValue(node)
    end
    

    # throws Exception
    def getImportUriPath()
        node = DomSearchHelper.getNode(XslData.getInstance().ROOT_IMPORT_URI, self.getRootNode().getChildNodes())
        return DomNodeHelper.getTextNodeValue(node)
    end
    

    def toString()
        begin
            if @document != nil
                return XmlDocumentHelper.toString(@document)
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("DOM Document error", self, @commonStrings.TOSTRING)
            end
            return nil
        end
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/InputOutputTypeData"
require "org/allbinary/logic/io/OutputTypeData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfosData"
require "org/allbinary/logic/visual/transform/template/XslData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Attr"
require "org/w3c/dom/Document"
require "org/w3c/dom/NamedNodeMap"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"

