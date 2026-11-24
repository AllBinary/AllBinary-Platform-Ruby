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
# package org.allbinary.data.tree.dom

# require "java/util/Set"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class ModDomHelper
    

    def initialize()
    end
    

    # throws Exception
    def self.createTextNode(document, name, text)
        newValueNode = document.createElement(name)
        newValueTextNode = document.createTextNode(text)
        newValueNode.appendChild(newValueTextNode)
        return newValueNode
    end
    

    # throws Exception
    def self.createValueNode(document, text)
        return ModDomHelper.createTextNode(document, DomData::VALUE, text)
    end
    

    # throws Exception
    def self.createNameNode(document, text)
        return ModDomHelper.createTextNode(document, DomData::NAME, text)
    end
    

    # throws Exception
    def self.createIndexNode(document, index)
        return ModDomHelper.createTextNode(document, DomData::INDEX, index.to_s)
    end
    

    # throws Exception
    def self.createNameValueNodes_j4_1(document, elementName, nameText, valueText)
        newNode = document.createElement(elementName)
        newNode.appendChild(ModDomHelper.createNameNode(document, nameText))
        newNode.appendChild(ModDomHelper.createValueNode(document, valueText))
        return newNode
    end
    

    # throws Exception
    def self.createNameValueNodes_j3_1(document, elementNameAndNameText, valueText)
        newNode = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, elementNameAndNameText, valueText)
        return newNode
    end
    

    # throws Exception
    def self.createNameValueIndexNodes_j4_1(document, elementNameAndNameText, index, valueText)
        newNode = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, valueText)
        newNode.appendChild(ModDomHelper.createIndexNode(document, index))
        return newNode
    end
    

    # throws Exception
    def self.createNameValueNodes_j3_2(document, rootNode, hashMap)
        node = document.createElement(rootNode)
        return ModDomHelper.createNameValueNodes(document, node, hashMap)
    end
    

    # throws Exception
    def self.createNameValueNodes_j3_3(document, node, hashMap)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        (0...size).each do |i|
            objectKey = keyArray[i]
            name = objectKey
            anyType = hashMap.get(objectKey)
            if anyType == nil
                value = stringUtil.EMPTY_STRING
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
            elsif anyType.is_a?(String)
                value = stringUtil.getNonNull(anyType)
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
            elsif anyType.is_a?(::Java::Util::HashMap)
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, hashMap))
            else
                raise StandardError.new("HashMap value is the wrong instance and is: " + (::Org::Allbinary::Logic::Java::AnyType::Clazz::ClassUtil.viewAll(anyType, ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)).to_s)
            end
        end
        return node
    end
    

    # throws Exception
    def self.createNameValueNodes_j4_2(document, rootNodeName, duplicateNodeName, valueVector)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        node = document.createElement(rootNodeName)
        size = valueVector.size()
        (0...size).each do |i|
            value = stringUtil.getNonNull(valueVector.get(i))
            node.appendChild(ModDomHelper.createNameValueNodes(document, duplicateNodeName, value))
        end
        return node
    end

    def self.createNameValueNodes(*java_overload_args)
        return createNameValueNodes_j4(*java_overload_args) if java_overload_args.length == 4
        return createNameValueNodes_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method createNameValueNodes takes #{java_overload_args.length} arguments"
    end

    def self.createNameValueNodes_j4(*java_overload_args)
        return createNameValueNodes_j4_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String)) && (java_overload_args[3].nil? || java_overload_args[3].is_a?(::String))
        return createNameValueNodes_j4_2(*java_overload_args)
    end

    def self.createNameValueNodes_j3(*java_overload_args)
        return createNameValueNodes_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return createNameValueNodes_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Java::Util::HashMap))
        return createNameValueNodes_j3_3(*java_overload_args)
    end
    

    # throws Exception
    def self.createNameValueIndexNodes_j4_2(document, rootNodeName, duplicateNodeName, valueVector)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        node = document.createElement(rootNodeName)
        size = valueVector.size()
        (0...size).each do |index|
            value = stringUtil.getNonNull(valueVector.get(index))
            node.appendChild(ModDomHelper.createNameValueIndexNodes(document, duplicateNodeName, index, value))
        end
        return node
    end

    def self.createNameValueIndexNodes(*java_overload_args)
        return createNameValueIndexNodes_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method createNameValueIndexNodes takes #{java_overload_args.length} arguments"
    end

    def self.createNameValueIndexNodes_j4(*java_overload_args)
        return createNameValueIndexNodes_j4_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && java_overload_args[2].is_a?(::Integer) && (java_overload_args[3].nil? || java_overload_args[3].is_a?(::String))
        return createNameValueIndexNodes_j4_2(*java_overload_args)
    end
    

    # throws Exception
    def self.createNodeWithValueNodes_j3_1(document, rootNode, hashMap)
        node = document.createElement(rootNode)
        return ModDomHelper.createNodeWithValueNodes(document, node, hashMap)
    end
    

    # throws Exception
    def self.createNodeWithValueNodes_j3_2(document, node, hashMap)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        (0...size).each do |i|
            name = keyArray[i]
            anyType = hashMap.get(name)
            value = stringUtil.getNonNull(anyType)
            node.appendChild(ModDomHelper.createTextNode(document, name, value))
        end
        return node
    end

    def self.createNodeWithValueNodes(*java_overload_args)
        return createNodeWithValueNodes_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method createNodeWithValueNodes takes #{java_overload_args.length} arguments"
    end

    def self.createNodeWithValueNodes_j3(*java_overload_args)
        return createNodeWithValueNodes_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Java::Util::HashMap))
        return createNodeWithValueNodes_j3_2(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; module Clazz; autoload :ClassUtil, "org/allbinary/logic/java/anyType/clazz/ClassUtil" unless const_defined?(:ClassUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false)

end; end; end; end; end

