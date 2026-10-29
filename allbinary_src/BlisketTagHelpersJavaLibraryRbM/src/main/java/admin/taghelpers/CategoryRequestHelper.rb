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
        return defined?(@@categoryRequest) ? @@categoryRequest : nil
    end

    def self.categoryRequest=(value)
        @@categoryRequest = value
    end
end

require "java/util/HashMap"
require "org/allbinary/business/category/CategoryComponent"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/store/StoreCategoryFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/data/tree/category/CategoryLoaderFactory"
require "org/allbinary/data/tree/category/CategoryLoaderInterface"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoBasic"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class CategoryRequestHelper
    @@categoryRequest = StringMaker.new().append("<").append(CategoryData.getInstance().REQUEST).append(">").to_s
end

