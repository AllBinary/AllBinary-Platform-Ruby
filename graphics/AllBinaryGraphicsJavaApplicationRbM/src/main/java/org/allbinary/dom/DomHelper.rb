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

# require "java/io/File"
# require "javax/xml/parsers/DocumentBuilder"
# require "javax/xml/parsers/DocumentBuilderFactory"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/dom/DOMSource"
# require "javax/xml/transform/stream/StreamResult"

module ::Org; module Allbinary; module Dom

class DomHelper
    attr_accessor :logUtil

    def jfields_org_allbinary_dom_DomHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_dom_DomHelper
    end
    

    def createDocument_j0()
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
    def createDocument_j1(xmlFile)
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.parse(xmlFile)
            return document
        rescue StandardError => e
            raise e
        end
    end

    def createDocument(*java_overload_args)
        return createDocument_j0(*java_overload_args) if java_overload_args.length == 0
        return createDocument_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method createDocument takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def toString(document)
        begin
            domSource = DOMSource.new(document)
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
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
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        childNodeList = self.getChildNodeList(nodeName, nodeList)
        numberOfChildren = childNodeList.getLength()
        (0...numberOfChildren).each do |index|
            node = childNodeList.item(index)
            if node.getNodeType() != ::Org::W3c::Dom::Node::TEXT_NODE
                list.add(node)
            end
        end
        return list
    end
    

    # throws Exception
    def getWithoutTextNodes(nodeList)
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        numberOfChildren = nodeList.getLength()
        (0...numberOfChildren).each do |index|
            node = nodeList.item(index)
            if node.getNodeType() != ::Org::W3c::Dom::Node::TEXT_NODE
                list.add(node)
            end
        end
        return list
    end
    

    # throws Exception
    def searchNodeList_j2_1(nodeName, nodeList)
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
    def searchNodeList_j2_2(nodeName, nodeList)
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

    def searchNodeList(*java_overload_args)
        return searchNodeList_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method searchNodeList takes #{java_overload_args.length} arguments"
    end

    def searchNodeList_j2(*java_overload_args)
        return searchNodeList_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::W3c::Dom::NodeList))
        return searchNodeList_j2_2(*java_overload_args)
    end

    def self.instance()
        DomHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DomHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DomHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DomHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

begin
    DomHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

