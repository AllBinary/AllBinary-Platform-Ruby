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
# package taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class InventoryHelper < TagHelper
    attr_accessor :logUtil, :basicItemData, :weblisketSession, :response, :request, :streetAddress, :id, :searchRequest

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @weblisketSession = nil
        @response = nil
        @request = nil
        @streetAddress = nil
        @id = nil
        @searchRequest = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        @response = pageContext.getResponse()
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(StoreFrontData.getInstance().NAME)
        xslFile = propertiesHashMap.get(TransformInfoData.getInstance().TEMPLATEFILENAME)
        if storeName != nil
            storeFrontInterface = StoreFrontFactory.getInstance(storeName)
            contentType = AcceptableResponseGenerator.getInstance().get(@request)
            searchParams = SearchParams.new(@request)
            @searchRequest = SearchRequest.new(storeFrontInterface, searchParams, xslFile, contentType, propertiesHashMap, pageContext)
        end
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(@basicItemData.ID)
    end
    

    def viewSummary()
        begin
            inventoryViewSearchInterface = InventoryViewFactory.getInstance(@searchRequest)
            result = inventoryViewSearchInterface.getProduct(@id)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfull Inventory View Summary", self, "viewSummary()")
            end
            return result
        rescue StandardError => e
            error = "Failed to View Summary"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewSummary()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    

    def search()
        begin
            stringUtil = StringUtil.getInstance()
            keywords = @searchRequest.getParams().get().get(@basicItemData.KEYWORDS)
            if keywords == nil || (keywords <=> stringUtil.EMPTY_STRING) == 0
                return "Please enter a keyword in the search field above the Search button."
            end
            inventoryViewSearchInterface = InventoryViewFactory.getInstance(@searchRequest)
            result = inventoryViewSearchInterface.searchSingleDynamicPage()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successful Inventory Dynamic Search", self, "searchSingleDynamicPage()")
            end
            return result
        rescue StandardError => e
            error = "Failed to search Inventory by keyword"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "searchSingleDynamicPage()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/logic/communication/http/AcceptableResponseGenerator"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchParams"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "views/admin/inventory/listings/InventoryViewFactory"
require "views/admin/inventory/listings/InventoryViewSearchInterface"

