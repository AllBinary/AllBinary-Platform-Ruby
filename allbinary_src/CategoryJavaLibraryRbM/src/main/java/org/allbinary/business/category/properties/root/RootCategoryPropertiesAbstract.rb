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
# package org.allbinary.business.category.properties.root

require "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface"

class RootCategoryPropertiesAbstract
    include RootCategoryPropertiesInterface
    attr_accessor :category, :fileName

    def initialize_fields
        @category = CategoryData.getInstance().ROOTCATEGORY
        @fileName = @category + (AbPathData.getInstance().EXTENSION_SEP).to_s + (CategoryData.getInstance().UNCRYPTED_EXTENSION).to_s
    end
    

    def initialize()
        initialize_fields
    end
    

    def getKey()
        return self.getValue()
    end
    

    def getValue()
        return @category
    end
    

    # throws Exception
    def setValue(value)
        raise StandardError.new("No Value Allowed")
    end
    

    # throws Exception
    def setRootFilePath(value)
        raise RuntimeError.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def setRootFilePath(value)
        raise StandardError.new("No Value Allowed")
    end
    

    # throws Exception
    def getRootFilePath()
        raise StandardError.new("No Value Allowed")
    end
    

    # throws Exception
    def isRealRoot()
        raise StandardError.new("No A Real Root")
    end
    

    # throws Exception
    def isRoot()
        raise StandardError.new("Root but not implemented")
    end
    

    # throws Exception
    def getWebAppPath(categoryHierarchyInterface)
        raise StandardError.new("Not Root")
    end
    

    def getPath(categoryHierarchyInterface)
        return AbPath.createAbPath()
    end
    

    def getFileName()
        return @fileName
    end
    

    def isValid()
        return true
    end
    

    def toHashMap()
        categoryHashMap = StdUtil.getInstance().createHashMap()
        categoryHashMap.put(CategoryData.getInstance().NAME, @category)
        return categoryHashMap
    end
    

    def toVector()
        categoryVector = BasicArrayListD.new()
        categoryVector.add(@category)
        return categoryVector
    end
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def validationInfo()
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

