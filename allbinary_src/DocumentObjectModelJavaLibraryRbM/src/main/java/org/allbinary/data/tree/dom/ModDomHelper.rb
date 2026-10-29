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
    def self.createNameValueNodes(document, elementName, nameText, valueText)
        newNode = document.createElement(elementName)
        newNode.appendChild(ModDomHelper.createNameNode(document, nameText))
        newNode.appendChild(ModDomHelper.createValueNode(document, valueText))
        return newNode
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNameValueNodes(document, elementNameAndNameText, valueText)
        newNode = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, elementNameAndNameText, valueText)
        return newNode
    end
    

    # throws Exception
    def self.createNameValueIndexNodes(document, elementNameAndNameText, index, valueText)
        newNode = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, valueText)
        newNode.appendChild(ModDomHelper.createIndexNode(document, index))
        return newNode
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNameValueNodes(document, rootNode, hashMap)
        node = document.createElement(rootNode)
        return ModDomHelper.createNameValueNodes(document, node, hashMap)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNameValueNodes(document, node, hashMap)
        stringUtil = StringUtil.getInstance()
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
            elsif anyType.is_a?(HashMap)
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, hashMap))
            else
                raise StandardError.new("HashMap value is the wrong instance and is: " + (ClassUtil.viewAll(anyType, CommonSeps.getInstance().NEW_LINE)).to_s)
            end
        end
        return node
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNameValueNodes(document, rootNodeName, duplicateNodeName, valueVector)
        stringUtil = StringUtil.getInstance()
        node = document.createElement(rootNodeName)
        size = valueVector.size()
        (0...size).each do |i|
            value = stringUtil.getNonNull(valueVector.get(i))
            node.appendChild(ModDomHelper.createNameValueNodes(document, duplicateNodeName, value))
        end
        return node
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNameValueIndexNodes(document, rootNodeName, duplicateNodeName, valueVector)
        stringUtil = StringUtil.getInstance()
        node = document.createElement(rootNodeName)
        size = valueVector.size()
        (0...size).each do |index|
            value = stringUtil.getNonNull(valueVector.get(index))
            node.appendChild(ModDomHelper.createNameValueIndexNodes(document, duplicateNodeName, index, value))
        end
        return node
    end
    

    # throws Exception
    def self.createNodeWithValueNodes(document, rootNode, hashMap)
        node = document.createElement(rootNode)
        return ModDomHelper.createNodeWithValueNodes(document, node, hashMap)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.createNodeWithValueNodes(document, node, hashMap)
        stringUtil = StringUtil.getInstance()
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
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/java/anyType/clazz/ClassUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/data/tree/dom/DomData"

