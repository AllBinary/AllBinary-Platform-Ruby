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

require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryFactoryInterface"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

class StoreThemeCategoryFactory
    include ::Org::Allbinary::Business::Category::CategoryFactoryInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface

    def jfields_org_allbinary_business_category_store_theme_StoreThemeCategoryFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
    end
    

    def initialize(transformInfoInterface)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategoryFactory
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        end
        @transformInfoInterface = transformInfoInterface
    end
    

    def getRootInstance_j0()
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::Theme::RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, 0)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance()", e)
            end
            return nil
        end
    end
    

    def getRootInstance_j1(categoryAbPath)
        begin
            level = ::Org::Allbinary::Business::Category::CategoryUtil.getPathLevel(categoryAbPath)
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::Theme::RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface, categoryAbPath)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance(String)", e)
            end
            return nil
        end
    end

    def getRootInstance(*java_overload_args)
        return getRootInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getRootInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getRootInstance takes #{java_overload_args.length} arguments"
    end
    

    def getRootInstanceFromNode(node)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::Theme::RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface, node)
            categoryPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Business::Category::CategoryUtil.getNameFromNode(node), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            level = ::Org::Allbinary::Business::Category::CategoryUtil.getPathLevel(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, node, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance(node)", e)
            end
            return nil
        end
    end
    java_overload :getRootInstanceFromNode, 1
    

    def getInstance_j2_1(categoryPath, level)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_1(rootCategoryInterface, parentCategoryInterface, categoryPath)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface , String, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j2_2(node, level)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(node)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(Node, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_2(rootCategoryInterface, parentCategoryInterface, node)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(node)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, Node, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j2_3(categoryPropertiesHashMap, level)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)", e)
            end
            return nil
        end
    end

    def getInstance(*java_overload_args)
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j2(*java_overload_args)
        return getInstance_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && java_overload_args[1].is_a?(::Integer)
        return getInstance_j2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node)) && java_overload_args[1].is_a?(::Integer)
        return getInstance_j2_3(*java_overload_args)
    end

    def getInstance_j3(*java_overload_args)
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return getInstance_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::W3c::Dom::Node))
        return getInstance_j3_3(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryUtil, "org/allbinary/business/category/CategoryUtil" unless const_defined?(:CategoryUtil, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactory, "org/allbinary/business/category/properties/CategoryPropertiesFactory" unless const_defined?(:CategoryPropertiesFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactoryInterface, "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface" unless const_defined?(:CategoryPropertiesFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; module Root; module Store; module Theme; autoload :RootStoreThemeCategoryPropertiesFactory, "org/allbinary/business/category/properties/root/store/theme/RootStoreThemeCategoryPropertiesFactory" unless const_defined?(:RootStoreThemeCategoryPropertiesFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :StoreThemeCategory, "org/allbinary/business/category/store/theme/StoreThemeCategory" unless const_defined?(:StoreThemeCategory, false)

end; end; end; end; end; end

