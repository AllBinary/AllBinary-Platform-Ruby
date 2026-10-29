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

require "org/allbinary/business/category/Category"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"

class StoreThemeCategory < Category
    include StoreThemeCategoryInterface
    attr_accessor :transformInfoInterface, :themeVector

    def initialize_fields
        @transformInfoInterface = nil
        @themeVector = nil
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 4 then constructor4(*args)
        when 4 then constructor4(*args)
        when 5 then constructor5(*args)
        end
    end
    

    def constructor3(transformInfoInterface, categoryPropertiesFactoryInterface, level)
        method(:initialize).super_method.call(categoryPropertiesFactoryInterface, level)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @themeVector = BasicArrayListD.new()
    end
    

    def constructor4(transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        method(:initialize).super_method.call(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @themeVector = BasicArrayListD.new()
    end
    

    def constructor4(transformInfoInterface, node, categoryPropertiesFactoryInterface, level)
        method(:initialize).super_method.call(categoryPropertiesFactoryInterface, level)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @themeVector = BasicArrayListD.new()
        self.addThemes(node)
    end
    

    def constructor5(transformInfoInterface, node, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        method(:initialize).super_method.call(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @themeVector = BasicArrayListD.new()
        self.addThemes(node)
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    # throws Exception
    def addThemes(node)
        themesNode = DomSearchHelper.getNode(ThemesData.getInstance().NAME, node.getChildNodes())
        nodeList = themesNode.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            themeNode = nodeList.item(index)
            if themeNode.getNodeName().compareTo(ThemeData.getInstance().NAME) == 0
                @themeVector.add(ThemeValidation.new(self, themeNode))
            end
        end
    end
    

    def addTheme(themeValidation)
        @themeVector.add(themeValidation)
    end
    

    def getThemes()
        return @themeVector
    end
    

    # throws Exception
    def isValid()
        if !super()
            return false
        end
        return true
    end
    

    # throws Exception
    def toHashMap()
        categoryHashMap = super()
        categoryHashMap.put(ThemesData.getInstance().NAME, @themeVector)
        return categoryHashMap
    end
    

    # throws Exception
    def toVector()
        categoryVector = super()
        return categoryVector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/visual/theme/ThemeData"
require "org/allbinary/logic/visual/theme/ThemeValidation"
require "org/allbinary/logic/visual/theme/ThemesData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

