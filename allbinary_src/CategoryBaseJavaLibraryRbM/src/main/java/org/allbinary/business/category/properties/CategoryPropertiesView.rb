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
# package org.allbinary.business.category.properties

require "org/allbinary/data/tree/dom/DomNodeInterface"

class CategoryPropertiesView
    include DomNodeInterface
    attr_accessor :categoryPropertiesInterface

    def initialize_fields
        @categoryPropertiesInterface = nil
    end
    

    def initialize(categoryPropertiesInterface)
        initialize_fields
        @categoryPropertiesInterface = categoryPropertiesInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        categoryNode = document.createElement(CategoryData.getInstance().NAME)
        newCategoryNode = categoryNode
        newCategoryNode.setAttribute(CategoryData.getInstance().LABEL, @categoryPropertiesInterface.getValue())
        return categoryNode
    end
end

autoload :CategoryData, "org/allbinary/business/category/CategoryData"
autoload :Document, "org/w3c/dom/Document"
autoload :Element, "org/w3c/dom/Element"
autoload :Node, "org/w3c/dom/Node"
autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface"

