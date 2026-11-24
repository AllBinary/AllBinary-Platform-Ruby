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
# package admin.taghelpers

require "java/lang/JavaOverload"
# require "java/util/Map"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

module ::Admin; module Taghelpers

class CategoryRequestHelper < ModifyTable
    attr_accessor :logUtil, :pageContext, :hashMap, :request, :categoryLoaderInterface, :categoryInterface, :childCategoryInterface, :transformInfoInterface

    def jfields_admin_taghelpers_CategoryRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
        @request = nil unless instance_variable_defined?(:@request)
        @categoryLoaderInterface = nil unless instance_variable_defined?(:@categoryLoaderInterface)
        @categoryInterface = nil unless instance_variable_defined?(:@categoryInterface)
        @childCategoryInterface = nil unless instance_variable_defined?(:@childCategoryInterface)
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_CategoryRequestHelper
        begin
            @request = pageContext.getRequest()
            @pageContext = pageContext
            @hashMap = hashMap
            self.getXmlData()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "CategoryRequestHelper()", e)
            end
        end
    end
    

    def getXmlData()
        begin
            map = @request.getParameterMap()
            categoryData = ::Org::Allbinary::Business::Category::CategoryData.getInstance()
            keys = map.keySet()
            keyArray = keys.toArray()
            size = keyArray.length
            if size > 0
                xmlRequest = keyArray[0]
                index = 1
                while index < size && !xmlRequest.start_with?(CategoryRequestHelper.categoryRequest)
                    xmlRequest = keyArray[index]
                    if xmlRequest.start_with?(CategoryRequestHelper.categoryRequest)
                        break
                    end
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF(xmlRequest, self, "getXmlData()")
                end
                document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(xmlRequest)
                requestNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(categoryData.REQUEST, document.getChildNodes())
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, "getXmlData()")
                end
                self.setCategoryLoader(requestNode)
                parentCategoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(categoryData.PARENT, requestNode.getChildNodes())
                categoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(categoryData.NAME, parentCategoryNode.getChildNodes())
                @categoryInterface = ::Org::Allbinary::Business::Category::Store::StoreCategoryFactory.new(@transformInfoInterface).getRootInstanceFromNode(categoryNode)
                @categoryInterface = @categoryLoaderInterface.get(@categoryInterface)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                    @categoryInterface.log()
                    @logUtil.putF("Loaded Parent Category", self, "getXmlData()")
                end
                childCategoryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(categoryData.NAME, requestNode.getChildNodes())
                if childCategoryNode != nil
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                        @logUtil.putF("Loading Child Category", self, "getXmlData()")
                    end
                    @childCategoryInterface = ::Org::Allbinary::Business::Category::Store::StoreCategoryFactory.new(@transformInfoInterface).getInstance(childCategoryNode)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                        @childCategoryInterface.log()
                        @logUtil.putF("Loaded Child Category", self, "getXmlData()")
                    end
                else
                    @childCategoryInterface = @categoryInterface
                end
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getXmlData()", e)
            end
        end
    end
    java_overload :getXmlData, 0
    

    # throws Exception
    def setCategoryLoader(requestNode)
        storeNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, requestNode.getChildNodes())
        if storeNameNode != nil
            storeName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(storeNameNode)
            if storeName != nil
                storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
                @transformInfoInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoBasic.new(storeFrontInterface, @hashMap, @pageContext)
                if @transformInfoInterface == nil
                    raise StandardError.new("TransformInfo null")
                end
                storeCategoryFactory = ::Org::Allbinary::Business::Category::Store::StoreCategoryFactory.new(@transformInfoInterface)
                @categoryLoaderInterface = ::Org::Allbinary::DataPackage::Tree::Category::CategoryLoaderFactory.getInstance(storeCategoryFactory)
            else
                raise StandardError.new("Store Name Error: " + storeName)
            end
        end
    end
    java_overload :setCategoryLoader, 1
    

    def insert()
        begin
            success = "Successfully Added the following to the Category table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("inserting", self, "insert()")
            end
            @categoryLoaderInterface.insert(@categoryInterface, @childCategoryInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add item to Category"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    def delete()
        begin
            success = "Successfully Removed " + (::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME).to_s + "=" + (@childCategoryInterface.getPath()).to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Deleting", self, "delete()")
            end
            @categoryLoaderInterface.delete(@categoryInterface, @childCategoryInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            begin
                error = "Failed to remove category: " + (@childCategoryInterface.getPath()).to_s
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
                end
                return error
            rescue StandardError => e2
                error = "Failed to remove category and show the path of the failed category"
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e2)
                end
                return error
            end
        end
    end
    java_overload :delete, 0
    

    def viewCategory()
        begin
            document = ::Org::Allbinary::Business::Category::CategoryComponent.new(@childCategoryInterface).toXmlDoc()
            xmlString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(xmlString, self, "viewCategory()")
            end
            return xmlString
        rescue StandardError => e
            error = "Failed to get Category"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategory()", e)
            end
            return error
        end
    end
    java_overload :viewCategory, 0
    

    def viewCategories()
        begin
            success = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "viewCategories()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view Categories table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategories()", e)
            end
            return error
        end
    end
    java_overload :viewCategories, 0
    

    def update()
        begin
            success = "New Item Successfully added"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add Item"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0

    def self.categoryRequest()
        CategoryRequestHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@categoryRequest) ? @@categoryRequest : nil
    end

    def self.categoryRequest=(value)
        CategoryRequestHelper.java_static_fields unless @java_static_fields_started
        @@categoryRequest = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@categoryRequest = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("<").append(::Org::Allbinary::Business::Category::CategoryData.getInstance().REQUEST).append(">").to_s
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CategoryRequestHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryComponent, "org/allbinary/business/category/CategoryComponent" unless const_defined?(:CategoryComponent, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; autoload :StoreCategoryFactory, "org/allbinary/business/category/store/StoreCategoryFactory" unless const_defined?(:StoreCategoryFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderFactory, "org/allbinary/data/tree/category/CategoryLoaderFactory" unless const_defined?(:CategoryLoaderFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderInterface, "org/allbinary/data/tree/category/CategoryLoaderInterface" unless const_defined?(:CategoryLoaderInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoBasic, "org/allbinary/logic/visual/transform/info/TransformInfoBasic" unless const_defined?(:TransformInfoBasic, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    CategoryRequestHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

