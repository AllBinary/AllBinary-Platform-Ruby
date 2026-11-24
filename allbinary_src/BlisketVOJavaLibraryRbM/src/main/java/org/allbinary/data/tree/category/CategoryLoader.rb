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
require "java/lang/JavaOverload"
require "org/allbinary/data/tree/category/CategoryLoaderInterface"
require "org/allbinary/data/tree/category/CategoryModifierTree"

module ::Org; module Allbinary; module DataPackage; module Tree; module Category

class CategoryLoader < CategoryModifierTree
    include CategoryLoaderInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_data_tree_category_CategoryLoader
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(categoryFactoryInterface)
        super(categoryFactoryInterface)
        jfields_org_allbinary_data_tree_category_CategoryLoader
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)")
        end
    end
    

    def getDoc(categoryInterface)
        java_monitor.synchronize do
        begin
            if categoryInterface.getProperties().getPath(categoryInterface.getHierarchy()) != nil
                if categoryInterface.getHierarchy().getLevel() == 1
                    rootAbFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(categoryInterface.getRootFilePath())
                    if !rootAbFile.isDirectory()
                        rootAbFile.mkdirs()
                        if !rootAbFile.isDirectory()
                            raise StandardError.new("Could Not Create Directory")
                        end
                        self.save(categoryInterface)
                    end
                end
                fileAbPath = categoryInterface.getFilePath()
                cryptFileReader = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Business::Category::CategoryData.getInstance().ENCRYPTED_EXTENSION)
                document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(cryptFileReader.get(fileAbPath))
                return document
            else
                raise StandardError.new("Null Category")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
    java_overload :getDoc, 1
    

    def get_j1_1(categoryInterface)
        java_monitor.synchronize do
        begin
            document = self.getDoc(categoryInterface)
            categoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, document.getChildNodes())
            return self.addProperties(categoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    def get_j1_2(document)
        java_monitor.synchronize do
        begin
            categoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, document.getChildNodes())
            loadedCategoryInterface = @categoryFactoryInterface.getRootInstanceFromNode(categoryNode)
            return self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end

    def get(*java_overload_args)
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
    end

    def get_j1(*java_overload_args)
        return get_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::CategoryInterface))
        return get_j1_2(*java_overload_args)
    end
    

    def getAll_j1_1(categoryInterface)
        java_monitor.synchronize do
        begin
            document = self.getDoc(categoryInterface)
            return self.getAll(document)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    def getAll_j1_2(document)
        java_monitor.synchronize do
        begin
            categoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, document.getChildNodes())
            loadedCategoryInterface = @categoryFactoryInterface.getRootInstanceFromNode(categoryNode)
            return self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes())
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    

    def getAll_j2(parentCategoryInterface, categoryNodeList)
        java_monitor.synchronize do
        begin
            if categoryNodeList != nil
                (0...categoryNodeList.getLength()).each do |index|
                    categoryNode = categoryNodeList.item(index)
                    if categoryNode != nil && categoryNode.getNodeName().compareTo(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME) == 0
                        categoryInterface = @categoryFactoryInterface.getInstance(parentCategoryInterface.getHierarchy().getRoot(), parentCategoryInterface, categoryNode)
                        parentCategoryInterface.addChild(categoryInterface)
                    end
                end
            end
            return parentCategoryInterface
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end

    def getAll(*java_overload_args)
        return getAll_j1(*java_overload_args) if java_overload_args.length == 1
        return getAll_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getAll takes #{java_overload_args.length} arguments"
    end

    def getAll_j1(*java_overload_args)
        return getAll_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::CategoryInterface))
        return getAll_j1_2(*java_overload_args)
    end
    

    def addProperties(loadedCategoryInterface, categoryNodeList)
        java_monitor.synchronize do
        begin
            if categoryNodeList != nil
                (0...categoryNodeList.getLength()).each do |index|
                    categoryNode = categoryNodeList.item(index)
                    if categoryNode != nil && categoryNode.getNodeName().compareTo(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME) == 0
                        categoryPropertiesInterface = ::Org::Allbinary::Business::Category::Properties::CategoryProperties.new(categoryNode)
                        loadedCategoryInterface.addChildProperty(categoryPropertiesInterface)
                    end
                end
            end
            return loadedCategoryInterface
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
        end
    end
    java_overload :addProperties, 2
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryProperties, "org/allbinary/business/category/properties/CategoryProperties" unless const_defined?(:CategoryProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

