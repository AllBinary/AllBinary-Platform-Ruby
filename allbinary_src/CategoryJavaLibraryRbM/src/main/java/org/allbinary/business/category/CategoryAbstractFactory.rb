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

require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryFactoryInterface"

module ::Org; module Allbinary; module Business; module Category

class CategoryAbstractFactory
    include CategoryFactoryInterface
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_business_category_CategoryAbstractFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_business_category_CategoryAbstractFactory
    end
    

    def getRootInstance_j0()
        raise RuntimeError.new()
    end
    

    def getRootInstance_j1(categoryAbPath)
        raise RuntimeError.new()
    end

    def getRootInstance(*java_overload_args)
        return getRootInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getRootInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getRootInstance takes #{java_overload_args.length} arguments"
    end
    

    def getRootInstanceFromNode(node)
        raise RuntimeError.new()
    end
    java_overload :getRootInstanceFromNode, 1
    

    def getInstance_j1_1(categoryName)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(String)")
            end
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryName)
            return Category.new(categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_1(rootCategoryInterface, parentCategoryInterface, categoryName)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, String)")
            end
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryName)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface , String, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j1_2(node)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(Node)")
            end
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(node)
            return Category.new(categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(Node, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_2(rootCategoryInterface, parentCategoryInterface, node)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, Node)")
            end
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(node)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, Node, int)", e)
            end
            return nil
        end
    end
    

    def getInstance_j3_3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)")
            end
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)", e)
            end
            return nil
        end
    end

    def getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return getInstance_j1_2(*java_overload_args)
    end

    def getInstance_j3(*java_overload_args)
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return getInstance_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::W3c::Dom::Node))
        return getInstance_j3_3(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactory, "org/allbinary/business/category/properties/CategoryPropertiesFactory" unless const_defined?(:CategoryPropertiesFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactoryInterface, "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface" unless const_defined?(:CategoryPropertiesFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :Category, "org/allbinary/business/category/Category" unless const_defined?(:Category, false)
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false)

end; end; end; end

