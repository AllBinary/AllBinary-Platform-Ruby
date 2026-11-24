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

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Taghelpers

class OrderHistoryHelper < ::Admin::Taghelpers::TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request, :streetAddress, :id, :groupId, :status, :newStatus

    def jfields_taghelpers_OrderHistoryHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @request = nil unless instance_variable_defined?(:@request)
        @streetAddress = nil unless instance_variable_defined?(:@streetAddress)
        @id = nil unless instance_variable_defined?(:@id)
        @groupId = nil unless instance_variable_defined?(:@groupId)
        @status = nil unless instance_variable_defined?(:@status)
        @newStatus = nil unless instance_variable_defined?(:@newStatus)
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        jfields_taghelpers_OrderHistoryHelper
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        @newStatus = propertiesHashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
        if storeName != nil
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        end
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID)
        @groupId = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP)
        if @newStatus == nil
            @newStatus = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
        end
    end
    java_overload :getFormData, 0
    

    def setOrderStatus()
        begin
            success = "Status successfully set to: " + @status
            orderReviewInterface = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryFactory.getInstance(@id)
            status = orderReviewInterface.getStatus()
            if (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED) == 0
                return "Order " + @id + " Already Cancelled<br/>"
            elsif (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED) == 0
                return "Order " + @id + " Already Shipped. You can't cancel a shipped order.<br/>"
            elsif (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING) == 0
                return "Order " + @id + " has been cancelled.<br/>"
            elsif (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED) == 0
                return "Order " + @id + " Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>"
            elsif (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSING) == 0
                orderHistoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance()
                orderHistoryEntityInterface.setStatus(@id, @newStatus)
                return "Order " + @id + " has been cancelled.<br/>"
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setOrderStatus()")
            end
            return "Error Setting Order Status"
        rescue StandardError => e
            error = "Failed to set order status"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br/>"
        end
    end
    java_overload :setOrderStatus, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryFactory, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory" unless const_defined?(:OrderHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryInterface, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface" unless const_defined?(:OrderHistoryInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface" unless const_defined?(:OrderHistoryEntityInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

