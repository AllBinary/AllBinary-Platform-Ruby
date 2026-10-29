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

class OrderHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
        @request = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(StoreFrontData.getInstance().NAME)
        if !StringValidationUtil.getInstance().isEmpty(storeName)
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        end
        @weblisketSession = WeblisketSession.new(@propertiesHashMap, @pageContext)
    end
    

    def setPaymentGateway()
        begin
            paymentGatewayBoolean = false
            orderInterface = @weblisketSession.getOrder()
            requestPaymentGateway = @request.getParameter(PaymentGatewayData::NAME.to_s)
            if !StringValidationUtil.getInstance().isEmpty(requestPaymentGateway)
                @weblisketSession.setPaymentMethod(requestPaymentGateway)
                orderInterface.setPaymentMethod(requestPaymentGateway)
                paymentGatewayBoolean = true
            end
            paymentGatewayEntityInterface = PaymentGatewayEntityFactory.getInstance()
            paymentTypeVector = paymentGatewayEntityInterface.findPaymentTypeVectorByStore(@weblisketSession.getStoreName())
            if paymentTypeVector.size() == 1
                paymentType = paymentTypeVector.get(0)
                paymentGatewayInterface = paymentGatewayEntityInterface.getPaymentGatewayInterface(@weblisketSession.getStoreName(), paymentType)
                paymentGateway = paymentGatewayInterface.getName()
                @weblisketSession.setPaymentMethod(paymentGateway)
                orderInterface.setPaymentMethod(paymentGateway)
                paymentGatewayBoolean = true
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Successfully set PaymentGateway Order: ")
                stringBuffer.append(orderInterface.getId())
                stringBuffer.append(" to: ")
                stringBuffer.append(orderInterface.getPaymentMethod())
                @logUtil.putF(stringBuffer.to_s, self, "setPaymentGateway()")
            end
            return paymentGatewayBoolean
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Failed to set PaymentGateway for Order: ")
                begin
                    orderInterface = @weblisketSession.getOrder()
                    if orderInterface != nil
                        stringBuffer.append(orderInterface.getId())
                        stringBuffer.append(" to: ")
                        stringBuffer.append(orderInterface.getPaymentMethod())
                    end
                rescue StandardError => ex
                    stringBuffer.append(" Exception Getting")
                end
                @logUtil.put(stringBuffer.to_s, self, "setPaymentGateway()", e)
            end
            return false
        end
    end
    

    def process()
        begin
            order = @weblisketSession.getOrder()
            order.setStoreName(@storeFrontInterface.getName())
            result = OrderProcessorUtil.getInstance().process(@weblisketSession.getUserName(), order)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfully Processed Order: " + result, self, "processOrder()")
            end
            return result
        rescue StandardError => e
            stringBuffer = StringMaker.new()
            stringBuffer.append("Failed to Process Order: ")
            begin
                stringBuffer.append(@weblisketSession.getOrder().getId())
            rescue StandardError => ex
                stringBuffer.append(" Exception Getting Id")
            end
            error = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/commerce/inventory/order/OrderProcessorUtil"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntity"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"

