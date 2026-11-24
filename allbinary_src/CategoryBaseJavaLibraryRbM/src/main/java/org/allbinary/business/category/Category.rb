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
require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryInterface"

module ::Org; module Allbinary; module Business; module Category

class Category
    include CategoryInterface
    attr_accessor :logUtil, :commonStrings, :categoryHierarchyInterface, :categoryPropertiesInterface, :childCategoryVector, :typeVector, :PROPERTIES, :CATEGORY

    def jfields_org_allbinary_business_category_Category
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @categoryHierarchyInterface = nil unless instance_variable_defined?(:@categoryHierarchyInterface)
        @categoryPropertiesInterface = nil unless instance_variable_defined?(:@categoryPropertiesInterface)
        @childCategoryVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @typeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @PROPERTIES = 1
        @CATEGORY = 0
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_category_Category_1(*args)
        when 2 then jnew_org_allbinary_business_category_Category_2(*args)
        when 3 then jnew_org_allbinary_business_category_Category_3(*args)
        else raise ArgumentError, "No constructor of Category takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_category_Category_1(categoryPropertiesFactoryInterface)
        jfields_org_allbinary_business_category_Category
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "Category(CategoryPropertiesFactoryInterface)")
        end
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = ::Org::Allbinary::Business::Category::Hierarchy::CategoryHierarchy.new(self, self)
        self.log()
    end
    

    def jnew_org_allbinary_business_category_Category_2(categoryPropertiesFactoryInterface, level)
        jfields_org_allbinary_business_category_Category
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = ::Org::Allbinary::Business::Category::Hierarchy::CategoryHierarchy.new(self, self, level)
        self.log()
    end
    

    def jnew_org_allbinary_business_category_Category_3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        jfields_org_allbinary_business_category_Category
        @categoryPropertiesInterface = categoryPropertiesFactoryInterface.getInstance()
        @categoryHierarchyInterface = ::Org::Allbinary::Business::Category::Hierarchy::CategoryHierarchy.new(rootCategoryInterface, parentCategoryInterface)
        self.log()
    end
    

    # throws Exception
    def getKey()
        return @categoryPropertiesInterface.getKey()
    end
    java_overload :getKey, 0
    

    # throws Exception
    def getRootFilePath()
        rootAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(NOT_ROOT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        categoryInterface = @categoryHierarchyInterface.getRoot()
        if categoryInterface.getProperties().isRoot()
            rootCategoryPropertiesInterface = categoryInterface.getProperties()
            rootAbPath = rootCategoryPropertiesInterface.getRootFilePath()
        end
        return rootAbPath
    end
    java_overload :getRootFilePath, 0
    

    # throws Exception
    def getFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getRootFilePath().to_s + self.getProperties().getPath(self.getHierarchy()).to_s, self.getProperties().getFileName())
    end
    java_overload :getFilePath, 0
    

    # throws Exception
    def getWebAppPath()
        categoryInterface = @categoryHierarchyInterface.getRoot()
        return categoryInterface.getProperties().getWebAppPath()
    end
    java_overload :getWebAppPath, 0
    

    # throws Exception
    def getPath()
        return @categoryPropertiesInterface.getPath(@categoryHierarchyInterface)
    end
    java_overload :getPath, 0
    

    def addChildProperty(categoryPropertiesInterface)
        java_monitor.synchronize do
        @typeVector.add(@PROPERTIES)
        return @childCategoryVector.add(categoryPropertiesInterface)
        end
    end
    java_overload :addChildProperty, 1
    

    def addChild(categoryInterface)
        java_monitor.synchronize do
        self.removeDuplicateChild(categoryInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
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
    java_overload :addChild, 1
    

    def getChildNodes()
        return @childCategoryVector
    end
    java_overload :getChildNodes, 0
    

    def removeChild(categoryInterface)
        java_monitor.synchronize do
        removalVector = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :removeChild, 1
    

    def removal(removalVector)
        removalSize = removalVector.size()
        (0...removalSize).each do |index|
            anyType = removalVector.get(index)
            objectIndex = @childCategoryVector.indexOf(anyType)
            @typeVector.remove(objectIndex)
            @childCategoryVector.remove(objectIndex)
        end
    end
    java_overload :removal, 1
    

    def removeDuplicateChild(categoryInterface)
        java_monitor.synchronize do
        removalVector = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :removeDuplicateChild, 1
    

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
    java_overload :isLeaf, 0
    

    def getProperties()
        return @categoryPropertiesInterface
    end
    java_overload :getProperties, 0
    

    def setProperties(categoryPropertiesInterface)
        @categoryPropertiesInterface = categoryPropertiesInterface
    end
    java_overload :setProperties, 1
    

    def getHierarchy()
        return @categoryHierarchyInterface
    end
    java_overload :getHierarchy, 0
    

    def setHierarchy(categoryHierarchyInterface)
        @categoryHierarchyInterface = categoryHierarchyInterface
    end
    java_overload :setHierarchy, 1
    

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
    java_overload :isValid, 0
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo()
        return nil
    end
    java_overload :validationInfo, 0
    

    # throws Exception
    def toHashMap()
        categoryHashMap = @categoryPropertiesInterface.toHashMap()
        return categoryHashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toVector()
        categoryVector = @categoryPropertiesInterface.toVector()
        categoryVector.add(@childCategoryVector)
        return categoryVector
    end
    java_overload :toVector, 0
    

    # throws Exception
    def log()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Category Name: ")
            stringBuffer.append(@categoryPropertiesInterface.getValue())
            stringBuffer.append("\nPath = ")
            stringBuffer.append(self.getPath().to_s)
            stringBuffer.append("\nFile Path: ")
            stringBuffer.append(self.getFilePath().to_s)
            @logUtil.putF(stringBuffer.to_s, self, "log()")
        end
    end
    java_overload :log, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NOT_ROOT, "This is not the root so it has no file path.")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Category"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NOT_ROOT].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchy, "org/allbinary/business/category/hierarchy/CategoryHierarchy" unless const_defined?(:CategoryHierarchy, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactoryInterface, "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface" unless const_defined?(:CategoryPropertiesFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; module Root; autoload :RootCategoryPropertiesInterface, "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface" unless const_defined?(:RootCategoryPropertiesInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    Category.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

