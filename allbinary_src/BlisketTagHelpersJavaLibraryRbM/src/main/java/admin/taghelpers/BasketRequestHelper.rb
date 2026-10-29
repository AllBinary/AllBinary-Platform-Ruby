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

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class BasketRequestHelper < TagHelper
    attr_accessor :logUtil, :basicItemData, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request, :id, :num, :MAX

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
        @request = nil
        @id = nil
        @num = nil
        @MAX = 200
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        else
            @storeFrontInterface = StoreFront.new()
        end
        @weblisketSession = WeblisketSession.new(propertiesHashMap, pageContext)
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(@basicItemData.ID)
        @num = @request.getParameter(BasketData::ITEMTOTALINBASKET)
    end
    

    def addItemToBasket()
        begin
            if @id != nil && @num != nil
                basket = @weblisketSession.getOrder().getBasket()
                if InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@id) == nil
                    return false
                end
                basket.addItem(@id, @num)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfully added item to Basket", self, "addItemToBasket()")
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "addItemToBasket()", e)
            end
            return false
        end
    end
    

    def removeItemFromBasket()
        begin
            if @id != nil
                basket = @weblisketSession.getOrder().getBasket()
                basket.removeItem(@id)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfully removed item from Basket", self, "removeItemFromBasket()")
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "removeItemFromBasket()", e)
            end
            return false
        end
    end
    

    def adjustBasket()
        begin
            basket = @weblisketSession.getOrder().getBasket()
            if @id != nil && @num != nil
                basket.adjustItem(@id, @num)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfull Adjusted Basket", self, "adjustBasket()")
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "adjustBasket()", e)
            end
            return false
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/basket/BasketData"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"

