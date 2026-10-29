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

require "org/allbinary/business/category/CategoryFactoryInterface"

class CategoryAbstractFactory
    include CategoryFactoryInterface
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getRootInstance()
        raise RuntimeError.new()
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRootInstance(categoryAbPath)
        raise RuntimeError.new()
    end
    

    def getRootInstanceFromNode(node)
        raise RuntimeError.new()
    end
    

    def getInstance(categoryName)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(String)")
            end
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryName)
            return Category.new(categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, categoryName)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, String)")
            end
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryName)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface , String, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(node)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(Node)")
            end
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(node)
            return Category.new(categoryPropertiesFactoryInterface)
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, Node)")
            end
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(node)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, Node, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF(@commonStrings.START, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)")
            end
            categoryPropertiesFactoryInterface = CategoryPropertiesFactory.new(categoryPropertiesHashMap)
            return Category.new(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(CategoryInterface, CategoryInterface, HashMap)", e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/category/properties/CategoryPropertiesFactory"
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/Category"
require "org/allbinary/business/category/CategoryInterface"

