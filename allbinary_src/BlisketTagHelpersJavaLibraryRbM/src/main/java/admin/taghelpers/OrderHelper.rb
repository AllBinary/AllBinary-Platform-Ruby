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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class OrderHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request

    def jfields_admin_taghelpers_OrderHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @request = nil unless instance_variable_defined?(:@request)
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        jfields_admin_taghelpers_OrderHelper
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(storeName)
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        end
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(@propertiesHashMap, @pageContext)
    end
    

    def setPaymentGateway()
        begin
            paymentGatewayBoolean = false
            orderInterface = @weblisketSession.getOrder()
            requestPaymentGateway = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(requestPaymentGateway)
                @weblisketSession.setPaymentMethod(requestPaymentGateway)
                orderInterface.setPaymentMethod(requestPaymentGateway)
                paymentGatewayBoolean = true
            end
            paymentGatewayEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance()
            paymentTypeVector = paymentGatewayEntityInterface.findPaymentTypeVectorByStore(@weblisketSession.getStoreName())
            if paymentTypeVector.size() == 1
                paymentType = paymentTypeVector.get(0)
                paymentGatewayInterface = paymentGatewayEntityInterface.getPaymentGatewayInterface(@weblisketSession.getStoreName(), paymentType)
                paymentGateway = paymentGatewayInterface.getName()
                @weblisketSession.setPaymentMethod(paymentGateway)
                orderInterface.setPaymentMethod(paymentGateway)
                paymentGatewayBoolean = true
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Successfully set PaymentGateway Order: ")
                stringBuffer.append(orderInterface.getId())
                stringBuffer.append(" to: ")
                stringBuffer.append(orderInterface.getPaymentMethod())
                @logUtil.putF(stringBuffer.to_s, self, "setPaymentGateway()")
            end
            return paymentGatewayBoolean
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :setPaymentGateway, 0
    

    def process()
        begin
            order = @weblisketSession.getOrder()
            order.setStoreName(@storeFrontInterface.getName())
            result = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderProcessorUtil.getInstance().process(@weblisketSession.getUserName(), order)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfully Processed Order: " + result, self, "processOrder()")
            end
            return result
        rescue StandardError => e
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Failed to Process Order: ")
            begin
                stringBuffer.append(@weblisketSession.getOrder().getId())
            rescue StandardError => ex
                stringBuffer.append(" Exception Getting Id")
            end
            error = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            return error
        end
    end
    java_overload :process, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order" unless const_defined?(:Order, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderProcessorUtil, "org/allbinary/business/user/commerce/inventory/order/OrderProcessorUtil" unless const_defined?(:OrderProcessorUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEntity, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntity" unless const_defined?(:PaymentGatewayEntity, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory" unless const_defined?(:PaymentGatewayEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

