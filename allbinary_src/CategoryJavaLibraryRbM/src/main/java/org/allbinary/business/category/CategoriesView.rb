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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Category

class CategoriesView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :categoryInterface

    def jfields_org_allbinary_business_category_CategoriesView
        @categoryInterface = nil unless instance_variable_defined?(:@categoryInterface)
    end
    

    def initialize(categoryInterface)
        jfields_org_allbinary_business_category_CategoriesView
        @categoryInterface = categoryInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = CategoryView.new(@categoryInterface).toXmlNode(document)
        childArray = @categoryInterface.getChildNodes().toArray()
        size = childArray.length
        (0...size).each do |i|
            childCategoryInterface = childArray[i]
            childCategoryNode = CategoriesView.new(childCategoryInterface).toXmlNode(document)
            node.appendChild(childCategoryNode)
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false)
autoload :CategoryView, "org/allbinary/business/category/CategoryView" unless const_defined?(:CategoryView, false)

end; end; end; end

