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
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class OrderHistoryHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request, :streetAddress, :id, :groupId, :status, :newStatus

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
        @request = nil
        @streetAddress = nil
        @id = nil
        @groupId = nil
        @status = nil
        @newStatus = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(StoreFrontData.getInstance().NAME)
        @newStatus = propertiesHashMap.get(OrderHistoryData::STATUS)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        end
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(OrderData::ID)
        @groupId = @request.getParameter(ShippingMethodData::GROUP)
        if @newStatus == nil
            @newStatus = @request.getParameter(OrderHistoryData::STATUS)
        end
    end
    

    def setOrderStatus()
        begin
            success = "Status successfully set to: " + @status
            orderReviewInterface = OrderHistoryFactory.getInstance(@id)
            status = orderReviewInterface.getStatus()
            if (status <=> OrderHistoryData::CANCELLED) == 0
                return "Order " + @id + " Already Cancelled<br/>"
            elsif (status <=> OrderHistoryData::SHIPPED) == 0
                return "Order " + @id + " Already Shipped. You can't cancel a shipped order.<br/>"
            elsif (status <=> OrderHistoryData::PREPROCESSING) == 0
                return "Order " + @id + " has been cancelled.<br/>"
            elsif (status <=> OrderHistoryData::PARTIALLYSHIPPED) == 0
                return "Order " + @id + " Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>"
            elsif (status <=> OrderHistoryData::PROCESSING) == 0
                orderHistoryEntityInterface = OrderHistoryEntityFactory.getInstance()
                orderHistoryEntityInterface.setStatus(@id, @newStatus)
                return "Order " + @id + " has been cancelled.<br/>"
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setOrderStatus()")
            end
            return "Error Setting Order Status"
        rescue StandardError => e
            error = "Failed to set order status"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br/>"
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"

