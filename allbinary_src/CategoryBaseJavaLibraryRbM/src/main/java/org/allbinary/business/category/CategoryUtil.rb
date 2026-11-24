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

module ::Org; module Allbinary; module Business; module Category

class CategoryUtil
    

    def initialize()
    end
    

    def self.getPathLevel(categoryPath)
        java_monitor.synchronize do
        count = ::Org::Apache::Commons::Lang3::StringUtils.countMatches(categoryPath.to_s, ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
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
            labelNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(CategoryData.getInstance().LABEL, node.getChildNodes())
            if labelNode != nil
                return ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(labelNode)
            end
        end
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Apache; module Commons; module Lang3; autoload :StringUtils, "org/apache/commons/lang3/StringUtils" unless const_defined?(:StringUtils, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Attr, "org/w3c/dom/Attr" unless const_defined?(:Attr, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NamedNodeMap, "org/w3c/dom/NamedNodeMap" unless const_defined?(:NamedNodeMap, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false)

end; end; end; end

