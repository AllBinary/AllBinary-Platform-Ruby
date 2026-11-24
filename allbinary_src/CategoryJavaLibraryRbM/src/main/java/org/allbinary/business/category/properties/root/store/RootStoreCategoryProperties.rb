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
# package org.allbinary.business.category.properties.root.store

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties; module Root; module Store

class RootStoreCategoryProperties
    include ::Org::Allbinary::Business::Category::Properties::Root::RootCategoryPropertiesInterface
    include ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesInterface
    attr_accessor :logUtil, :pathData, :fileAbPath, :abPath, :category, :isRealRoot, :webAppAbPath, :transformInfoInterface

    def jfields_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        @fileAbPath = nil unless instance_variable_defined?(:@fileAbPath)
        @abPath = nil unless instance_variable_defined?(:@abPath)
        @category = nil unless instance_variable_defined?(:@category)
        @isRealRoot = nil unless instance_variable_defined?(:@isRealRoot)
        @webAppAbPath = nil unless instance_variable_defined?(:@webAppAbPath)
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_1(*args)
        when 2 then jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2(*args)
        else raise ArgumentError, "No constructor of RootStoreCategoryProperties takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2(*java_overload_args)
        return jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_1(transformInfoInterface)
        jfields_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties
        @transformInfoInterface = transformInfoInterface
        @abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.createAbPath()
        @category = ::Org::Allbinary::Business::Category::CategoryData.getInstance().ROOTCATEGORY
        @isRealRoot = true
        self.initPath()
        self.log()
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_1(transformInfoInterface, categoryAbPath)
        jfields_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties
        @transformInfoInterface = transformInfoInterface
        @abPath = categoryAbPath
        @category = @pathData.getNameFromPath(categoryAbPath.to_s)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = ::Org::Allbinary::Business::Category::CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_2(transformInfoInterface, node)
        jfields_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties
        @transformInfoInterface = transformInfoInterface
        categoryPath = ::Org::Allbinary::Business::Category::CategoryUtil.getNameFromNode(node)
        @abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(categoryPath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @category = @pathData.getNameFromPath(categoryPath)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = ::Org::Allbinary::Business::Category::CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties_2_3(transformInfoInterface, categoryPropertiesHashMap)
        jfields_org_allbinary_business_category_properties_root_store_RootStoreCategoryProperties
        @transformInfoInterface = transformInfoInterface
        categoryPath = String.new(categoryPropertiesHashMap.get(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME))
        @abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(categoryPath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @category = @pathData.getNameFromPath(categoryPath)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = ::Org::Allbinary::Business::Category::CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    # throws Exception
    def initPath()
        transformInfoHttpStoreInterface = @transformInfoInterface
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(transformInfoHttpStoreInterface.getStoreName())
        postPath = storeFrontInterface.getCurrentHostNamePath() + storeFrontInterface.getCategoryPath()
        httpServletRequest = transformInfoHttpStoreInterface.getPageContext().getRequest()
        @webAppAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((httpServletRequest.getContextPath()).to_s + postPath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        self.setRootFilePath(::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getMainPath()).to_s + postPath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
    end
    java_overload :initPath, 0
    

    def isRealRoot()
        return @isRealRoot
    end
    java_overload :isRealRoot, 0
    

    def isRoot()
        return true
    end
    java_overload :isRoot, 0
    

    def getKey()
        return self.getValue()
    end
    java_overload :getKey, 0
    

    def setPath(path)
        @abPath = path
    end
    java_overload :setPath, 1
    

    def setRootFilePath(value)
        @fileAbPath = value
    end
    java_overload :setRootFilePath, 1
    

    def getRootFilePath()
        return @fileAbPath
    end
    java_overload :getRootFilePath, 0
    

    def getValue()
        return @category
    end
    java_overload :getValue, 0
    

    # throws Exception
    def getWebAppPath()
        return @webAppAbPath
    end
    java_overload :getWebAppPath, 0
    

    def getPath(categoryHierarchyInterface)
        return @abPath
    end
    java_overload :getPath, 1
    

    def getFileName()
        return self.getValue() + ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP + ::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION
    end
    java_overload :getFileName, 0
    

    def setValue(value)
        @category = value
    end
    java_overload :setValue, 1
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def toHashMap()
        categoryHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        categoryHashMap.put(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, self.getValue())
        return categoryHashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        categoryVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        categoryVector.add(self.getValue())
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
    

    def log()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("filePath = ").append(@fileAbPath.to_s).append("\npath = ").append(@abPath.to_s).append("\ncategory = ").append(@category).to_s, self, "log()")
        end
    end
    java_overload :log, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryUtil, "org/allbinary/business/category/CategoryUtil" unless const_defined?(:CategoryUtil, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

