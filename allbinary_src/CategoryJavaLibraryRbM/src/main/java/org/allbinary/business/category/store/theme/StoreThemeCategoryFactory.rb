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

require "org/allbinary/business/category/CategoryFactoryInterface"

class StoreThemeCategoryFactory
    include CategoryFactoryInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @transformInfoInterface = nil
    end
    

    def initialize(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        end
        @transformInfoInterface = transformInfoInterface
    end
    

    def getRootInstance()
        begin
            categoryPropertiesFactoryInterface = RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, 0)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance()", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRootInstance(categoryAbPath)
        begin
            level = CategoryUtil.getPathLevel(categoryAbPath)
            categoryPropertiesFactoryInterface = RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface, categoryAbPath)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance(String)", e)
            end
            return nil
        end
    end
    

    def getRootInstanceFromNode(node)
        begin
            categoryPropertiesFactoryInterface = RootStoreThemeCategoryPropertiesFactory.new(@transformInfoInterface, node)
            categoryPath = AbPath.new(CategoryUtil.getNameFromNode(node), StringUtil.getInstance().EMPTY_STRING)
            level = CategoryUtil.getPathLevel(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, node, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getRootInstance(node)", e)
            end
            return nil
        end
    end
    

    def getInstance(categoryPath, level)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, categoryPath)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryPath)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface , String, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(node, level)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(node)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(Node, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, node)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(node)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, Node, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(categoryPropertiesHashMap, level)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return StoreThemeCategory.new(@transformInfoInterface, categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        begin
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return StoreThemeCategory.new(@transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)", e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/CategoryUtil"
require "org/allbinary/business/category/properties/CategoryPropertiesFactory"
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"
require "org/allbinary/business/category/properties/root/store/theme/RootStoreThemeCategoryPropertiesFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/store/theme/StoreThemeCategory"

