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


class DomNodeHelper
    

    def initialize()
    end
    

    def self.getFirstChildElement(parentNode)
        node = parentNode.getFirstChild()
        if node != nil && node.getNodeType() != Node::ELEMENT_NODE
            nodeList = parentNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                node = nodeList.item(index)
                if node.getNodeType() == 1
                    break
                end
            end
        end
        return node
    end
    

    def self.getTextNodeValue(node)
        nodeTextNode = node.getFirstChild()
        if nodeTextNode != nil
            return nodeTextNode.getNodeValue()
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getTextNodeValue(nodeName, nodeList)
        node = DomSearchHelper.getNode(nodeName, nodeList)
        return DomNodeHelper.getTextNodeValue(node)
    end
    

    def self.getTextNodesValue(node)
        stringBuffer = StringMaker.new()
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            nodeTextNode = nodeList.item(index)
            if nodeTextNode.getNodeType() == Node::TEXT_NODE
                if nodeTextNode != nil
                    stringBuffer.append(nodeTextNode.getNodeValue())
                end
            end
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/data/tree/dom/DomSearchHelper"

