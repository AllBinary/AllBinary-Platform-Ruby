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

class DomNodeHelper
    

    def initialize()
    end
    

    def self.getFirstChildElement(parentNode)
        node = parentNode.getFirstChild()
        if node != nil && node.getNodeType() != ::Org::W3c::Dom::Node::ELEMENT_NODE
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
    

    def self.getTextNodeValue_j1(node)
        nodeTextNode = node.getFirstChild()
        if nodeTextNode != nil
            return nodeTextNode.getNodeValue()
        else
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    # throws Exception
    def self.getTextNodeValue_j2(nodeName, nodeList)
        node = DomSearchHelper.getNode(nodeName, nodeList)
        return DomNodeHelper.getTextNodeValue(node)
    end

    def self.getTextNodeValue(*java_overload_args)
        return getTextNodeValue_j1(*java_overload_args) if java_overload_args.length == 1
        return getTextNodeValue_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getTextNodeValue takes #{java_overload_args.length} arguments"
    end
    

    def self.getTextNodesValue(node)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            nodeTextNode = nodeList.item(index)
            if nodeTextNode.getNodeType() == ::Org::W3c::Dom::Node::TEXT_NODE
                if nodeTextNode != nil
                    stringBuffer.append(nodeTextNode.getNodeValue())
                end
            end
        end
        return stringBuffer.to_s
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false)

end; end; end; end; end

