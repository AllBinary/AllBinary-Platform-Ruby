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
# package org.allbinary.data.tree.category

require "java/lang/Object"
require "org/allbinary/data/tree/category/CategoryModifierTreeInterface"
require "org/allbinary/data/tree/category/CategoryPrivateTree"

class CategoryModifierTree < CategoryPrivateTree
    include CategoryModifierTreeInterface
    attr_accessor :logUtil, :commonStrings, :directory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @directory = Directory.getInstance()
    end
    

    def initialize(categoryFactoryInterface)
        super(categoryFactoryInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)")
        end
    end
    

    def insert(parentCategoryInterface, newChildCategoryInterface)
        java_monitor.synchronize do
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF("Inserting", self, "insert()")
            end
            if parentCategoryInterface.isValid()
                parentCategoryInterface.addChild(newChildCategoryInterface)
                directoryToBeCreatedAbPath = AbPath.new(newChildCategoryInterface.getRootFilePath().to_s + newChildCategoryInterface.getPath().to_s, StringUtil.getInstance().EMPTY_STRING)
                @directory.create(directoryToBeCreatedAbPath)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                    @logUtil.putF("Saving", self, "insert()")
                end
                self.save(parentCategoryInterface)
                self.save(newChildCategoryInterface)
            else
                raise StandardError.new("Will Not Add Null Category")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "insert", e)
            end
        end
        end
    end
    

    def delete(parentCategoryInterface, existingChildCategoryInterface)
        java_monitor.synchronize do
        begin
            if parentCategoryInterface.isValid()
                parentCategoryInterface.addChild(existingChildCategoryInterface)
                directoryToBeDeletedAbPath = AbPath.new(existingChildCategoryInterface.getRootFilePath().to_s + existingChildCategoryInterface.getPath().to_s, StringUtil.getInstance().EMPTY_STRING)
                self.delete(existingChildCategoryInterface)
                parentCategoryInterface.removeChild(existingChildCategoryInterface)
                self.save(parentCategoryInterface)
                @directory.remove(directoryToBeDeletedAbPath)
            else
                raise StandardError.new("Will Not Add Null Category")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
        end
    end
end

require "org/allbinary/business/category/CategoryFactoryInterface"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

