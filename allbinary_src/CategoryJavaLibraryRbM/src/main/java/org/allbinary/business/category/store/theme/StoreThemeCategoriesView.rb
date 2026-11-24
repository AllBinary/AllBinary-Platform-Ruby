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
# package org.allbinary.business.category.store.theme

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

class StoreThemeCategoriesView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :categoryInterface

    def jfields_org_allbinary_business_category_store_theme_StoreThemeCategoriesView
        @categoryInterface = nil unless instance_variable_defined?(:@categoryInterface)
    end
    

    def initialize(categoryInterface)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategoriesView
        @categoryInterface = categoryInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = StoreThemeCategoryView.new(@categoryInterface).toXmlNode(document)
        childArray = @categoryInterface.getChildNodes().toArray()
        size = childArray.length
        (0...size).each do |i|
            childCategoryInterface = childArray[i]
            childCategoryNode = StoreThemeCategoriesView.new(childCategoryInterface).toXmlNode(document)
            node.appendChild(childCategoryNode)
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface" unless const_defined?(:StoreThemeCategoryInterface, false)
autoload :StoreThemeCategoryView, "org/allbinary/business/category/store/theme/StoreThemeCategoryView" unless const_defined?(:StoreThemeCategoryView, false)

end; end; end; end; end; end

