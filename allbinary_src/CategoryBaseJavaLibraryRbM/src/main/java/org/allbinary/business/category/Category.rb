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
require "org/allbinary/business/category/CategoryInterface"

class Category
    include CategoryInterface
    attr_accessor :logUtil, :commonStrings, :categoryHierarchyInterface, :categoryPropertiesInterface, :childCategoryVector, :typeVector, :PROPERTIES, :CATEGORY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @categoryHierarchyInterface = nil
        @categoryPropertiesInterface = nil
        @childCategoryVector = BasicArrayListD.new()
        @typeVector = BasicArrayListD.new()
        @PROPERTIES = 1
        @CATEGORY = 0
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(categoryPropertiesFactoryInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "Category(CategoryPropertiesFactoryInterface)")
        end
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = CategoryHierarchy.new(self, self)
        self.log()
    end
    

    def constructor2(categoryPropertiesFactoryInterface, level)
        initialize_fields
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = CategoryHierarchy.new(self, self, level)
        self.log()
    end
    

    def constructor3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        initialize_fields
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = CategoryHierarchy.new(rootCategoryInterface, parentCategoryInterface)
        self.log()
    end
    

    # throws Exception
    def getKey()
        return @categoryPropertiesInterface.getKey()
    end
    

    # throws Exception
    def getRootFilePath()
        rootAbPath = AbPath.new(NOT_ROOT, StringUtil.getInstance().EMPTY_STRING)
        categoryInterface = @categoryHierarchyInterface.getRoot()
        if categoryInterface.getProperties().isRoot()
            rootCategoryPropertiesInterface = categoryInterface.getProperties()
            rootAbPath = rootCategoryPropertiesInterface.getRootFilePath()
        end
        return rootAbPath
    end
    

    # throws Exception
    def getFilePath()
        return AbPath.new(self.getRootFilePath().to_s + self.getProperties().getPath(self.getHierarchy()).to_s, self.getProperties().getFileName())
    end
    

    # throws Exception
    def getWebAppPath()
        categoryInterface = @categoryHierarchyInterface.getRoot()
        return categoryInterface.getProperties().getWebAppPath()
    end
    

    # throws Exception
    def getPath()
        return @categoryPropertiesInterface.getPath(@categoryHierarchyInterface)
    end
    

    def addChildProperty(categoryPropertiesInterface)
        java_monitor.synchronize do
        @typeVector.add(@PROPERTIES)
        return @childCategoryVector.add(categoryPropertiesInterface)
        end
    end
    

    def addChild(categoryInterface)
        java_monitor.synchronize do
        self.removeDuplicateChild(categoryInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("adding", self, "addChild")
        end
        childCategoryHierarchyInterface = categoryInterface.getHierarchy()
        childCategoryHierarchyInterface.setParent(self)
        childCategoryHierarchyInterface.setRoot(self.getHierarchy().getRoot())
        categoryInterface.setHierarchy(childCategoryHierarchyInterface)
        @typeVector.add(@CATEGORY)
        return @childCategoryVector.add(categoryInterface)
        end
    end
    

    def getChildNodes()
        return @childCategoryVector
    end
    

    def removeChild(categoryInterface)
        java_monitor.synchronize do
        removalVector = BasicArrayListD.new()
        bool_return = false
        size = @childCategoryVector.size()
        (0...size).each do |index|
            if @CATEGORY == @typeVector.get(index)
                anyType = @childCategoryVector.get(index)
                currentCategoryInterface = anyType
                if currentCategoryInterface.getProperties().getValue().compareTo(categoryInterface.getProperties().getValue()) == 0
                    removalVector.add(currentCategoryInterface)
                    bool_return = true
                end
            end
        end
        self.removal(removalVector)
        return bool_return
        end
    end
    

    def removal(removalVector)
        removalSize = removalVector.size()
        (0...removalSize).each do |index|
            anyType = removalVector.get(index)
            objectIndex = @childCategoryVector.indexOf(anyType)
            @typeVector.remove(objectIndex)
            @childCategoryVector.remove(objectIndex)
        end
    end
    

    def removeDuplicateChild(categoryInterface)
        java_monitor.synchronize do
        removalVector = BasicArrayListD.new()
        bool_return = false
        size = @childCategoryVector.size()
        (0...size).each do |index|
            anyType = @childCategoryVector.get(index)
            if @PROPERTIES == @typeVector.get(index)
                categoryPropertiesInterface = anyType
                if categoryInterface.getProperties().getValue().compareTo(categoryPropertiesInterface.getValue()) == 0
                    removalVector.add(categoryPropertiesInterface)
                    bool_return = true
                    break
                end
            elsif @CATEGORY == @typeVector.get(index)
                existingCategoryInterface = anyType
                categoryPropertiesInterface = existingCategoryInterface.getProperties()
                if categoryInterface.getProperties().getValue().compareTo(categoryPropertiesInterface.getValue()) == 0
                    removalVector.add(existingCategoryInterface)
                    bool_return = true
                    break
                end
            end
        end
        self.removal(removalVector)
        return bool_return
        end
    end
    

    # throws Exception
    def isLeaf()
        if @childCategoryVector == nil
            raise StandardError.new("Category Error")
        end
        if @childCategoryVector.size() == 0
            return true
        else
            return false
        end
    end
    

    def getProperties()
        return @categoryPropertiesInterface
    end
    

    def setProperties(categoryPropertiesInterface)
        @categoryPropertiesInterface = categoryPropertiesInterface
    end
    

    def getHierarchy()
        return @categoryHierarchyInterface
    end
    

    def setHierarchy(categoryHierarchyInterface)
        @categoryHierarchyInterface = categoryHierarchyInterface
    end
    

    # throws Exception
    def isValid()
        java_monitor.synchronize do
        if !@categoryPropertiesInterface.isValid()
            return false
        end
        size = @childCategoryVector.size()
        (0...size).each do |index|
            anyType = @childCategoryVector.get(index)
            if @PROPERTIES == @typeVector.get(index)
                categoryPropertiesInterface = anyType
                if !categoryPropertiesInterface.isValid()
                    return false
                end
            elsif @CATEGORY == @typeVector.get(index)
                categoryInterface = anyType
                if !categoryInterface.isValid()
                    return false
                end
            end
        end
        return true
        end
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
    

    # throws Exception
    def toHashMap()
        categoryHashMap = @categoryPropertiesInterface.toHashMap()
        return categoryHashMap
    end
    

    # throws Exception
    def toVector()
        categoryVector = @categoryPropertiesInterface.toVector()
        categoryVector.add(@childCategoryVector)
        return categoryVector
    end
    

    # throws Exception
    def log()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Category Name: ")
            stringBuffer.append(@categoryPropertiesInterface.getValue())
            stringBuffer.append("\nPath = ")
            stringBuffer.append(self.getPath().to_s)
            stringBuffer.append("\nFile Path: ")
            stringBuffer.append(self.getFilePath().to_s)
            @logUtil.putF(stringBuffer.to_s, self, "log()")
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/hierarchy/CategoryHierarchy"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class Category
    NOT_ROOT = "This is not the root so it has no file path."
end

