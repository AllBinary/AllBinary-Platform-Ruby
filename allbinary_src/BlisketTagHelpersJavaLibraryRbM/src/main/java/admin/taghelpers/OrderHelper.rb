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

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order"
autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
autoload :OrderProcessorUtil, "org/allbinary/business/user/commerce/inventory/order/OrderProcessorUtil"
autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
autoload :PaymentGatewayEntity, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntity"
autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"

