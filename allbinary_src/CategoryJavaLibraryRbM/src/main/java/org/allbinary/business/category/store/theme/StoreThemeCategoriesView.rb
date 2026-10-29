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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreThemeCategoriesView
    include DomNodeInterface
    attr_accessor :categoryInterface

    def initialize_fields
        @categoryInterface = nil
    end
    

    def initialize(categoryInterface)
        initialize_fields
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
end

require "org/allbinary/business/category/CategoryInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryView"

