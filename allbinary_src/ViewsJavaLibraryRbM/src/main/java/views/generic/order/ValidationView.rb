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
# package views.generic.order

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/order/OrderView"

module ::Views; module Generic; module Order

class ValidationView < OrderView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil

    def jfields_views_generic_order_ValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_order_ValidationView
    end
    

    def isValid()
        begin
            valid = true
            if @order.isIdValid() == false
                return false
            else
                @orderHistory = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryFactory.getInstance(@order.getId())
                if @orderHistory == nil || @orderHistory.isValid() == false
                    return false
                end
                orderItems = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderItemsEntity.new()
                @basketReview = orderItems.getBasketReview(@order.getId())
                if @basketReview == nil || @basketReview.isValid() == false
                    return false
                end
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if @order.isIdValid() == false
                stringBuffer.append(@order.getIdValidationInfo())
            else
                @orderHistory = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryFactory.getInstance(@order.getId())
                if @orderHistory == nil || @orderHistory.isValid() == false
                    stringBuffer.append("Order History data error for: ")
                    stringBuffer.append(@order.getId())
                    stringBuffer.append("<br />")
                end
                orderItems = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderItemsEntity.new()
                @basketReview = orderItems.getBasketReview(@order.getId())
                if @basketReview == nil
                    stringBuffer.append("Order Items data error - does not exist for: ")
                    stringBuffer.append(@order.getId())
                    stringBuffer.append("<br />")
                elsif @basketReview.isValid() == false
                    stringBuffer.append("Order Items data error - not valid for: ")
                    stringBuffer.append(@order.getId())
                    stringBuffer.append("<br />")
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def getTransformInfoInterface()
        return ValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryFactory, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory" unless const_defined?(:OrderHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity" unless const_defined?(:OrderItemsEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

