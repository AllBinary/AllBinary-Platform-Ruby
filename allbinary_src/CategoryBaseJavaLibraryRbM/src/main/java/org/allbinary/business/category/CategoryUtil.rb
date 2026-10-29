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
# package org.allbinary.business.category

require "java/lang/Object"

class CategoryUtil
    

    def initialize()
    end
    

    def self.getPathLevel(categoryPath)
        java_monitor.synchronize do
        count = StringUtils.countMatches(categoryPath.to_s, AbPathData.getInstance().SEPARATOR)
        return count
        end
    end
    

    def self.getNameFromNode(node)
        java_monitor.synchronize do
        attributes = node.getAttributes()
        attrNode = attributes.getNamedItem(CategoryData.getInstance().LABEL)
        if attrNode != nil
            return attrNode.getValue()
        else
            labelNode = DomSearchHelper.getNodeNoThrow(CategoryData.getInstance().LABEL, node.getChildNodes())
            if labelNode != nil
                return DomNodeHelper.getTextNodeValue(labelNode)
            end
        end
        return StringUtil.getInstance().EMPTY_STRING
        end
    end
end

require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringUtil"
require "org/apache/commons/lang3/StringUtils"
require "org/w3c/dom/Attr"
require "org/w3c/dom/NamedNodeMap"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/CategoryData"

