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


class DomSearchHelper
    

    def initialize()
    end
    

    def self.getNodeNoThrow(nodeName, nodeList)
        numberOfNodes = nodeList.getLength()
        (0...numberOfNodes).each do |index|
            node = nodeList.item(index)
            if node.getNodeName().compareTo(nodeName) == 0
                return node
            end
        end
        return nil
    end
    

    # throws Exception
    def self.getNode(nodeName, nodeList)
        node = DomSearchHelper.getNodeNoThrow(nodeName, nodeList)
        if node != nil
            return node
        else
            raise StandardError.new(nodeName + " Node Not Found in search")
        end
    end
    

    # throws Exception
    def self.getChildNodeList(nodeName, nodeList)
        node = DomSearchHelper.getNode(nodeName, nodeList)
        return node.getChildNodes()
    end
    

    # throws Exception
    def self.getAllNodes(nodeName, nodeList)
        vector = DomSearchHelper.getAllNodesNoThrow(nodeName, nodeList)
        if vector == nil
            raise StandardError.new(nodeName + " Node Not Found in search")
        else
            return vector
        end
    end
    

    def self.getAllNodesNoThrow(nodeName, nodeList)
        nodeVector = BasicArrayListD.new()
        numberOfNodes = nodeList.getLength()
        (0...numberOfNodes).each do |index|
            node = nodeList.item(index)
            if node.getNodeName().compareTo(nodeName) == 0
                nodeVector.add(node)
            end
        end
        return nodeVector
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

