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

require "org/allbinary/business/category/properties/CategoryPropertiesInterface"

class CategoryProperties
    include CategoryPropertiesInterface
    attr_accessor :logUtil, :category

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @category = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(name)
        initialize_fields
        @category = name
    end
    

    def constructor1(node)
        initialize_fields
        @category = CategoryUtil.getNameFromNode(node)
    end
    

    def constructor1(categoryPropertiesHashMap)
        initialize_fields
        @category = String.new(categoryPropertiesHashMap.get(CategoryData.getInstance().NAME))
    end
    

    def isRealRoot()
        return false
    end
    

    def isRoot()
        return false
    end
    

    def getKey()
        return self.getValue()
    end
    

    def getValue()
        return @category
    end
    

    # throws Exception
    def getPath(categoryHierarchyInterface)
        abPathData = AbPathData.getInstance()
        pathStringBuffer = StringMaker.new()
        list = BasicArrayListD.new()
        nextParentCategoryInterface = categoryHierarchyInterface.getParent()
        if self != nextParentCategoryInterface.getProperties()
            depthIndex = 0
            while nextParentCategoryInterface != nil
                if nextParentCategoryInterface.getProperties().isRealRoot()
                    break
                end
                if nextParentCategoryInterface.getProperties().isRoot()
                    list.addAt(0, nextParentCategoryInterface.getPath().to_s)
                else
                    pathStringBuffer.delete(0, pathStringBuffer.length())
                    list.addAt(0, pathStringBuffer.append(abPathData.SEPARATOR).append(nextParentCategoryInterface.getProperties().getValue()).to_s)
                end
                if nextParentCategoryInterface == nextParentCategoryInterface.getHierarchy().getParent()
                    break
                end
                nextParentCategoryInterface = nextParentCategoryInterface.getHierarchy().getParent()
                depthIndex += 1
                if depthIndex > CategoryProperties::MAXDEPTH
                    raise StandardError.new("Probably Major Error")
                end
            end
        end
        pathStringBuffer.delete(0, pathStringBuffer.length())
        pathStringBuffer.append(abPathData.SEPARATOR).append(self.getValue())
        size = list.size()
        (0...size).each do |index|
            pathStringBuffer.append(list.get(index))
        end
        pathStringBuffer.append(abPathData.SEPARATOR)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("path = " + pathStringBuffer.to_s, self, "getPath")
        end
        return AbPath.new(pathStringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def getFileName()
        return self.getValue() + AbPathData.getInstance().EXTENSION_SEP + CategoryData.getInstance().UNCRYPTED_EXTENSION
    end
    

    # throws Exception
    def getWebAppPath()
        raise StandardError.new("Not Root")
    end
    

    def setValue(value)
        @category = value
    end
    

    def isValid()
        returnBoolean = false
        if StringValidationUtil.getInstance().isValidRequired(@category, 1, AbSqlData::MAXSTRING)
            returnBoolean = true
        end
        return returnBoolean
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
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/CategoryUtil"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class CategoryProperties
    MAXDEPTH = 100
end

