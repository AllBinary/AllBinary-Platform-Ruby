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
# package org.allbinary.business.category.store

require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryAbstractFactory"
require "org/allbinary/business/category/CategoryFactoryInterface"

module ::Org; module Allbinary; module Business; module Category; module Store

class StoreCategoryFactory < ::Org::Allbinary::Business::Category::CategoryAbstractFactory
    include ::Org::Allbinary::Business::Category::CategoryFactoryInterface
    attr_accessor :logUtil, :transformInfoInterface

    def jfields_org_allbinary_business_category_store_StoreCategoryFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
    end
    

    def initialize(transformInfoInterface)
        super()
        jfields_org_allbinary_business_category_store_StoreCategoryFactory
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        end
        @transformInfoInterface = transformInfoInterface
    end
    

    def getRootInstance_j0()
        begin
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::RootStoreCategoryPropertiesFactory.new(@transformInfoInterface)
            return ::Org::Allbinary::Business::Category::Category.new(categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    def getRootInstance_j1(categoryPath)
        begin
            level = ::Org::Allbinary::Business::Category::CategoryUtil.getPathLevel(categoryPath)
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::RootStoreCategoryPropertiesFactory.new(@transformInfoInterface, categoryPath)
            return ::Org::Allbinary::Business::Category::Category.new(categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
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
            categoryPropertiesFactoryInterface = ::Org::Allbinary::Business::Category::Properties::Root::Store::RootStoreCategoryPropertiesFactory.new(@transformInfoInterface, node)
            categoryPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Business::Category::CategoryUtil.getNameFromNode(node), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            level = ::Org::Allbinary::Business::Category::CategoryUtil.getPathLevel(categoryPath)
            return ::Org::Allbinary::Business::Category::Category.new(categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    java_overload :getRootInstanceFromNode, 1
end

module ::Org; module Allbinary; module Business; module Category; autoload :Category, "org/allbinary/business/category/Category" unless const_defined?(:Category, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryUtil, "org/allbinary/business/category/CategoryUtil" unless const_defined?(:CategoryUtil, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactoryInterface, "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface" unless const_defined?(:CategoryPropertiesFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; module Root; module Store; autoload :RootStoreCategoryPropertiesFactory, "org/allbinary/business/category/properties/root/store/RootStoreCategoryPropertiesFactory" unless const_defined?(:RootStoreCategoryPropertiesFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

