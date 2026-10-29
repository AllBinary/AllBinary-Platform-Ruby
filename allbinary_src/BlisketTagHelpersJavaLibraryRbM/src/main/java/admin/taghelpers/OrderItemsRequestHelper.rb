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

class OrderItemsRequestHelper < TagHelper
    attr_accessor :logUtil, :request, :id, :groupId, :status

    def initialize_fields
        @logUtil = LogUtil.getInstance()
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
    

    def setOrderStatus(newStatus)
        begin
            if newStatus == nil
                newStatus = @status
            end
            success = "Status successfully set to: " + newStatus
            OrderItemsEntityFactory.getInstance().setStatus(@id, @groupId, newStatus)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setOrderStatus(newStatus)")
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
    

    # Java overloaded method: Ruby keeps the last definition
    def setOrderStatus()
        begin
            success = "Status successfully set to: " + @status
            OrderItemsEntityFactory.getInstance().setStatus(@id, @groupId, @status)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setOrderStatus(newStatus)")
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

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"

