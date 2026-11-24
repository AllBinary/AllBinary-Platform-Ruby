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
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class OrderHistoryRequestHelper < TagHelper
    attr_accessor :logUtil, :abeClientInformation, :request, :id, :groupId, :status

    def jfields_admin_taghelpers_OrderHistoryRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @id = nil unless instance_variable_defined?(:@id)
        @groupId = nil unless instance_variable_defined?(:@groupId)
        @status = nil unless instance_variable_defined?(:@status)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_OrderHistoryRequestHelper
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID)
        @groupId = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP)
        @status = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
    end
    java_overload :getFormData, 0
    

    def setOrderStatus_j0()
        begin
            if (@groupId <=> ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO) != 0
                if ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderItemsEntityFactory.getInstance().isEverythingShipped(@id)
                    @status = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED
                else
                    @status = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED
                end
            end
            success = "Status successfully set to: " + @status
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().setStatus(@id, @status)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Success", self, "setOrderStatus()")
            end
            return success
        rescue StandardError => e
            error = "Failed to set order status"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error
        end
    end
    

    def setOrderStatus_j1(newStatus)
        begin
            if newStatus == nil
                newStatus = @status
            end
            success = "Status successfully set to: " + newStatus
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().setStatus(@id, newStatus)
            orderHistory = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrder(@id)
            ::Org::Allbinary::Business::User::Commerce::Inventory::Order::Status::OrderStatusEmail.new(@abeClientInformation, orderHistory).process()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Success", self, "setOrderStatus()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view order table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus(newStatus)", e)
            end
            return error
        end
    end

    def setOrderStatus(*java_overload_args)
        return setOrderStatus_j0(*java_overload_args) if java_overload_args.length == 0
        return setOrderStatus_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setOrderStatus takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; module Status; autoload :OrderStatusEmail, "org/allbinary/business/user/commerce/inventory/order/status/OrderStatusEmail" unless const_defined?(:OrderStatusEmail, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory" unless const_defined?(:OrderItemsEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

