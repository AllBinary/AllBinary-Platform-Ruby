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

class ShippingHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request, :shippingType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
        @request = nil
        @shippingType = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        end
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        self.getFormData()
    end
    

    def getFormData()
        @shippingType = @request.getParameter(ShippingMethodData::NAME)
    end
    

    def setShippingType()
        begin
            success = "Successfully Set Shipping Type"
            order = @weblisketSession.getOrder()
            order.setShippingMethod(@shippingType)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setShippingType()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view Shipping Type"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setShippingType()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"

