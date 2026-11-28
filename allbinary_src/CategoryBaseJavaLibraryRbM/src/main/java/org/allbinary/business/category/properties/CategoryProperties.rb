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

require "java/lang/JavaOverload"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties

class CategoryProperties
    include CategoryPropertiesInterface
    attr_accessor :logUtil, :category

    def jfields_org_allbinary_business_category_properties_CategoryProperties
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @category = nil unless instance_variable_defined?(:@category)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_category_properties_CategoryProperties_1(*args)
        else raise ArgumentError, "No constructor of CategoryProperties takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_properties_CategoryProperties_1(*java_overload_args)
        return jnew_org_allbinary_business_category_properties_CategoryProperties_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_category_properties_CategoryProperties_1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_category_properties_CategoryProperties_1_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryProperties_1_1(name)
        jfields_org_allbinary_business_category_properties_CategoryProperties
        @category = name
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryProperties_1_2(node)
        jfields_org_allbinary_business_category_properties_CategoryProperties
        @category = ::Org::Allbinary::Business::Category::CategoryUtil.getNameFromNode(node)
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryProperties_1_3(categoryPropertiesHashMap)
        jfields_org_allbinary_business_category_properties_CategoryProperties
        @category = String.new(categoryPropertiesHashMap.get(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME))
    end
    

    def isRealRoot()
        return false
    end
    java_overload :isRealRoot, 0
    

    def isRoot()
        return false
    end
    java_overload :isRoot, 0
    

    def getKey()
        return self.getValue()
    end
    java_overload :getKey, 0
    

    def getValue()
        return @category
    end
    java_overload :getValue, 0
    

    # throws Exception
    def getPath(categoryHierarchyInterface)
        abPathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        pathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
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
                if depthIndex > MAXDEPTH
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("path = " + pathStringBuffer.to_s, self, "getPath")
        end
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(pathStringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :getPath, 1
    

    def getFileName()
        return self.getValue() + ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP + ::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION
    end
    java_overload :getFileName, 0
    

    # throws Exception
    def getWebAppPath()
        raise StandardError.new("Not Root")
    end
    java_overload :getWebAppPath, 0
    

    def setValue(value)
        @category = value
    end
    java_overload :setValue, 1
    

    def isValid()
        returnBoolean = false
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@category, 1, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING)
            returnBoolean = true
        end
        return returnBoolean
    end
    java_overload :isValid, 0
    

    def toHashMap()
        categoryHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        categoryHashMap.put(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, @category)
        return categoryHashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        categoryVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        categoryVector.add(@category)
        return categoryVector
    end
    java_overload :toVector, 0
    

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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXDEPTH, 100)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CategoryProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXDEPTH].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryUtil, "org/allbinary/business/category/CategoryUtil" unless const_defined?(:CategoryUtil, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    CategoryProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

