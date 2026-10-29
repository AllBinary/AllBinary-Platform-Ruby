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
# package org.allbinary.dom

# require "java/io/ByteArrayOutputStream"
# require "java/io/File"
# require "javax/xml/parsers/DocumentBuilder"
# require "javax/xml/parsers/DocumentBuilderFactory"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/dom/DOMSource"
# require "javax/xml/transform/stream/StreamResult"

class DomHelper
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return DomHelper.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def createDocument()
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.newDocument()
            return document
        rescue StandardError => e
            return nil
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def createDocument(xmlFile)
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.parse(xmlFile)
            return document
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def toString(document)
        begin
            domSource = DOMSource.new(document)
            byteArrayOutputStream = ByteArrayOutputStream.new()
            streamResult = StreamResult.new(byteArrayOutputStream)
            copyTransformerFactory = TransformerFactory.newInstance()
            copyTransformer = copyTransformerFactory.newTransformer()
            copyTransformer.transform(domSource, streamResult)
            return byteArrayOutputStream.to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def save(file, document)
        begin
            copyTransformerFactory = TransformerFactory.newInstance()
            copyTransformer = copyTransformerFactory.newTransformer()
            domSource = DOMSource.new(document)
            file.createNewFile()
            streamResult = StreamResult.new(file)
            copyTransformer.transform(domSource, streamResult)
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def getChildNodeList(nodeName, nodeList)
        numberOfNodes = nodeList.getLength()
        (0...numberOfNodes).each do |index|
            node = nodeList.item(index)
            if node.getNodeName().compareTo(nodeName) == 0
                return node.getChildNodes()
            end
        end
        raise StandardError.new(nodeName + " Node Not Found")
    end
    

    # throws Exception
    def getChildrenWithoutTextNodes(nodeName, nodeList)
        list = BasicArrayListD.new()
        childNodeList = self.getChildNodeList(nodeName, nodeList)
        numberOfChildren = childNodeList.getLength()
        (0...numberOfChildren).each do |index|
            node = childNodeList.item(index)
            if node.getNodeType() != Node::TEXT_NODE
                list.add(node)
            end
        end
        return list
    end
    

    # throws Exception
    def getWithoutTextNodes(nodeList)
        list = BasicArrayListD.new()
        numberOfChildren = nodeList.getLength()
        (0...numberOfChildren).each do |index|
            node = nodeList.item(index)
            if node.getNodeType() != Node::TEXT_NODE
                list.add(node)
            end
        end
        return list
    end
    

    # throws Exception
    def searchNodeList(nodeName, nodeList)
        numberOfNodes = nodeList.getLength()
        (0...numberOfNodes).each do |index|
            node = nodeList.item(index)
            @logUtil.putF("NodeName: " + (node.getNodeName()).to_s, self, "searchNodeList")
            if node.getNodeName().compareTo(nodeName) == 0
                return node
            end
        end
        raise StandardError.new(nodeName + " Node Not Found in search")
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def searchNodeList(nodeName, nodeList)
        numberOfNodes = nodeList.size()
        (0...numberOfNodes).each do |index|
            node = nodeList.get(index)
            @logUtil.putF("NodeName: " + (node.getNodeName()).to_s, self, "searchNodeList")
            if node.getNodeName().compareTo(nodeName) == 0
                return node
            end
        end
        raise StandardError.new(nodeName + " Node Not Found in search")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

class DomHelper
    @@instance = DomHelper.new()
end

