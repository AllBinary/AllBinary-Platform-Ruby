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


module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

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
        nodeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

end; end; end; end; end

