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
require "org/allbinary/data/tree/category/CategoryLoaderInterface"
require "org/allbinary/data/tree/category/CategoryModifierTree"

class CategoryLoader < CategoryModifierTree
    include CategoryLoaderInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(categoryFactoryInterface)
        super(categoryFactoryInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)")
        end
    end
    

    def getDoc(categoryInterface)
        java_monitor.synchronize do
        begin
            if categoryInterface.getProperties().getPath(categoryInterface.getHierarchy()) != nil
                if categoryInterface.getHierarchy().getLevel() == 1
                    rootAbFile = AbFile.createAbFileFromAbPath(categoryInterface.getRootFilePath())
                    if !rootAbFile.isDirectory()
                        rootAbFile.mkdirs()
                        if !rootAbFile.isDirectory()
                            raise StandardError.new("Could Not Create Directory")
                        end
                        self.save(categoryInterface)
                    end
                end
                fileAbPath = categoryInterface.getFilePath()
                cryptFileReader = CryptFileReader.new(CategoryData.getInstance().UNCRYPTED_EXTENSION, CategoryData.getInstance().ENCRYPTED_EXTENSION)
                document = DomDocumentHelper.create(cryptFileReader.get(fileAbPath))
                return document
            else
                raise StandardError.new("Null Category")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                begin
                    categoryInterface.log()
                rescue StandardError => e2
                    @logUtil.put("Could Not Log Category", self, "getDoc", e)
                end
                @logUtil.put(@commonStrings.FAILURE, self, "getDoc", e)
            end
            return nil
        end
        end
    end
    

    def get(categoryInterface)
        java_monitor.synchronize do
        begin
            document = self.getDoc(categoryInterface)
            categoryNode = DomSearchHelper.getNode(CategoryData.getInstance().NAME, document.getChildNodes())
            return self.addProperties(categoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def get(document)
        java_monitor.synchronize do
        begin
            categoryNode = DomSearchHelper.getNode(CategoryData.getInstance().NAME, document.getChildNodes())
            loadedCategoryInterface = @categoryFactoryInterface.getRootInstanceFromNode(categoryNode)
            return self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    def getAll(categoryInterface)
        java_monitor.synchronize do
        begin
            document = self.getDoc(categoryInterface)
            return self.getAll(document)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getAll(document)
        java_monitor.synchronize do
        begin
            categoryNode = DomSearchHelper.getNode(CategoryData.getInstance().NAME, document.getChildNodes())
            loadedCategoryInterface = @categoryFactoryInterface.getRootInstanceFromNode(categoryNode)
            return self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getAll(parentCategoryInterface, categoryNodeList)
        java_monitor.synchronize do
        begin
            if categoryNodeList != nil
                (0...categoryNodeList.getLength()).each do |index|
                    categoryNode = categoryNodeList.item(index)
                    if categoryNode != nil && categoryNode.getNodeName().compareTo(CategoryData.getInstance().NAME) == 0
                        categoryInterface = @categoryFactoryInterface.getInstance(parentCategoryInterface.getHierarchy().getRoot(), parentCategoryInterface, categoryNode)
                        parentCategoryInterface.addChild(categoryInterface)
                    end
                end
            end
            return parentCategoryInterface
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    def addProperties(loadedCategoryInterface, categoryNodeList)
        java_monitor.synchronize do
        begin
            if categoryNodeList != nil
                (0...categoryNodeList.getLength()).each do |index|
                    categoryNode = categoryNodeList.item(index)
                    if categoryNode != nil && categoryNode.getNodeName().compareTo(CategoryData.getInstance().NAME) == 0
                        categoryPropertiesInterface = CategoryProperties.new(categoryNode)
                        loadedCategoryInterface.addChildProperty(categoryPropertiesInterface)
                    end
                end
            end
            return loadedCategoryInterface
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
end

require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryFactoryInterface"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/properties/CategoryProperties"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

