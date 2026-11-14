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

class OrderHistoryRequestHelper < TagHelper
    attr_accessor :logUtil, :abeClientInformation, :request, :id, :groupId, :status

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @request = nil
        @id = nil
        @groupId = nil
        @status = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(OrderData::ID)
        @groupId = @request.getParameter(ShippingMethodData::GROUP)
        @status = @request.getParameter(OrderHistoryData::STATUS)
    end
    

    def setOrderStatus()
        begin
            if (@groupId <=> CommonPhoneStrings.getInstance().ZERO) != 0
                if OrderItemsEntityFactory.getInstance().isEverythingShipped(@id)
                    @status = OrderHistoryData::SHIPPED
                else
                    @status = OrderHistoryData::PARTIALLYSHIPPED
                end
            end
            success = "Status successfully set to: " + @status
            OrderHistoryEntityFactory.getInstance().setStatus(@id, @status)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Success", self, "setOrderStatus()")
            end
            return success
        rescue StandardError => e
            error = "Failed to set order status"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setOrderStatus(newStatus)
        begin
            if newStatus == nil
                newStatus = @status
            end
            success = "Status successfully set to: " + newStatus
            OrderHistoryEntityFactory.getInstance().setStatus(@id, newStatus)
            orderHistory = OrderHistoryEntityFactory.getInstance().getOrder(@id)
            OrderStatusEmail.new(@abeClientInformation, orderHistory).process()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Success", self, "setOrderStatus()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view order table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus(newStatus)", e)
            end
            return error
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData"
autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
autoload :OrderStatusEmail, "org/allbinary/business/user/commerce/inventory/order/status/OrderStatusEmail"
autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
autoload :OrderItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings"

