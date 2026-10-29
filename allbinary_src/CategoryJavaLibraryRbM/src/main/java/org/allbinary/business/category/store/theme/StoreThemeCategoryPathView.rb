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

require "org/allbinary/business/category/CategoryView"
require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreThemeCategoryPathView < CategoryView
    include DomNodeInterface
    

    def initialize(categoryInterface)
        super(categoryInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        storeThemeCategoryInterface = self.getCategoryInterface()
        themeArray = storeThemeCategoryInterface.getThemes().toArray()
        size = themeArray.length
        (0...size).each do |i|
            themeValidation = themeArray[i]
            domNodeInterface = ThemePropertiesView.new(themeValidation)
            node.appendChild(domNodeInterface.toXmlNode(document))
        end
        return node
    end
end

require "org/allbinary/logic/visual/theme/ThemeInterface"
require "org/allbinary/logic/visual/theme/ThemePropertiesView"
require "org/allbinary/logic/visual/theme/ThemeValidation"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"

