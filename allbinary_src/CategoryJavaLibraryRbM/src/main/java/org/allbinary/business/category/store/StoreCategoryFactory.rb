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

require "org/allbinary/business/category/CategoryAbstractFactory"
require "org/allbinary/business/category/CategoryFactoryInterface"

class StoreCategoryFactory < CategoryAbstractFactory
    include CategoryFactoryInterface
    attr_accessor :logUtil, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @transformInfoInterface = nil
    end
    

    def initialize(transformInfoInterface)
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        end
        @transformInfoInterface = transformInfoInterface
    end
    

    def getRootInstance()
        begin
            categoryPropertiesFactoryInterface = RootStoreCategoryPropertiesFactory.new(@transformInfoInterface)
            return Category.new(categoryPropertiesFactoryInterface)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRootInstance(categoryPath)
        begin
            level = CategoryUtil.getPathLevel(categoryPath)
            categoryPropertiesFactoryInterface = RootStoreCategoryPropertiesFactory.new(@transformInfoInterface, categoryPath)
            return Category.new(categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
    

    def getRootInstanceFromNode(node)
        begin
            categoryPropertiesFactoryInterface = RootStoreCategoryPropertiesFactory.new(@transformInfoInterface, node)
            categoryPath = AbPath.new(CategoryUtil.getNameFromNode(node), StringUtil.getInstance().EMPTY_STRING)
            level = CategoryUtil.getPathLevel(categoryPath)
            return Category.new(categoryPropertiesFactoryInterface, level)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(String, int)", e)
            end
            return nil
        end
    end
end

require "org/allbinary/business/category/Category"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/CategoryUtil"
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"
require "org/allbinary/business/category/properties/root/store/RootStoreCategoryPropertiesFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Node"

