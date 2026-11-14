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

# require "java/util/Map"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class CategoryRequestHelper < ModifyTable
    attr_accessor :logUtil, :pageContext, :hashMap, :request, :categoryLoaderInterface, :categoryInterface, :childCategoryInterface, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @pageContext = nil
        @hashMap = nil
        @request = nil
        @categoryLoaderInterface = nil
        @categoryInterface = nil
        @childCategoryInterface = nil
        @transformInfoInterface = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        begin
            @request = pageContext.getRequest()
            @pageContext = pageContext
            @hashMap = hashMap
            self.getXmlData()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "CategoryRequestHelper()", e)
            end
        end
    end
    

    def getXmlData()
        begin
            map = @request.getParameterMap()
            categoryData = CategoryData.getInstance()
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
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF(xmlRequest, self, "getXmlData()")
                end
                document = DomDocumentHelper.create(xmlRequest)
                requestNode = DomSearchHelper.getNode(categoryData.REQUEST, document.getChildNodes())
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @logUtil.putF(XmlDocumentHelper.toString(document), self, "getXmlData()")
                end
                self.setCategoryLoader(requestNode)
                parentCategoryNode = DomSearchHelper.getNode(categoryData.PARENT, requestNode.getChildNodes())
                categoryNode = DomSearchHelper.getNode(categoryData.NAME, parentCategoryNode.getChildNodes())
                @categoryInterface = StoreCategoryFactory.new(@transformInfoInterface).getRootInstanceFromNode(categoryNode)
                @categoryInterface = @categoryLoaderInterface.get(@categoryInterface)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                    @categoryInterface.log()
                    @logUtil.putF("Loaded Parent Category", self, "getXmlData()")
                end
                childCategoryNode = DomSearchHelper.getNodeNoThrow(categoryData.NAME, requestNode.getChildNodes())
                if childCategoryNode != nil
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                        @logUtil.putF("Loading Child Category", self, "getXmlData()")
                    end
                    @childCategoryInterface = StoreCategoryFactory.new(@transformInfoInterface).getInstance(childCategoryNode)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                        @childCategoryInterface.log()
                        @logUtil.putF("Loaded Child Category", self, "getXmlData()")
                    end
                else
                    @childCategoryInterface = @categoryInterface
                end
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getXmlData()", e)
            end
        end
    end
    

    # throws Exception
    def setCategoryLoader(requestNode)
        storeNameNode = DomSearchHelper.getNode(StoreFrontData.getInstance().NAME, requestNode.getChildNodes())
        if storeNameNode != nil
            storeName = DomNodeHelper.getTextNodeValue(storeNameNode)
            if storeName != nil
                storeFrontInterface = StoreFrontFactory.getInstance(storeName)
                @transformInfoInterface = TransformInfoBasic.new(storeFrontInterface, @hashMap, @pageContext)
                if @transformInfoInterface == nil
                    raise StandardError.new("TransformInfo null")
                end
                storeCategoryFactory = StoreCategoryFactory.new(@transformInfoInterface)
                @categoryLoaderInterface = CategoryLoaderFactory.getInstance(storeCategoryFactory)
            else
                raise StandardError.new("Store Name Error: " + storeName)
            end
        end
    end
    

    def insert()
        begin
            success = "Successfully Added the following to the Category table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("inserting", self, "insert()")
            end
            @categoryLoaderInterface.insert(@categoryInterface, @childCategoryInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add item to Category"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            success = "Successfully Removed " + (CategoryData.getInstance().NAME).to_s + "=" + (@childCategoryInterface.getPath()).to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Deleting", self, "delete()")
            end
            @categoryLoaderInterface.delete(@categoryInterface, @childCategoryInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            begin
                error = "Failed to remove category: " + (@childCategoryInterface.getPath()).to_s
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
                end
                return error
            rescue StandardError => e2
                error = "Failed to remove category and show the path of the failed category"
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e2)
                end
                return error
            end
        end
    end
    

    def viewCategory()
        begin
            document = CategoryComponent.new(@childCategoryInterface).toXmlDoc()
            xmlString = XmlDocumentHelper.toString(document)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(xmlString, self, "viewCategory()")
            end
            return xmlString
        rescue StandardError => e
            error = "Failed to get Category"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategory()", e)
            end
            return error
        end
    end
    

    def viewCategories()
        begin
            success = StringUtil.getInstance().EMPTY_STRING
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "viewCategories()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view Categories table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategories()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            success = "New Item Successfully added"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add Item"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end

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
            @@categoryRequest = StringMaker.new().append("<").append(CategoryData.getInstance().REQUEST).append(">").to_s
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

autoload :HashMap, "java/util/HashMap"
autoload :CategoryComponent, "org/allbinary/business/category/CategoryComponent"
autoload :CategoryData, "org/allbinary/business/category/CategoryData"
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface"
autoload :StoreCategoryFactory, "org/allbinary/business/category/store/StoreCategoryFactory"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :CategoryLoaderFactory, "org/allbinary/data/tree/category/CategoryLoaderFactory"
autoload :CategoryLoaderInterface, "org/allbinary/data/tree/category/CategoryLoaderInterface"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :TransformInfoBasic, "org/allbinary/logic/visual/transform/info/TransformInfoBasic"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

begin
    CategoryRequestHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

