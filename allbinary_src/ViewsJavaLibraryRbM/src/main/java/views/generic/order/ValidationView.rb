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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/order/OrderView"

class ValidationView < OrderView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def isValid()
        begin
            valid = true
            if @order.isIdValid() == false
                return false
            else
                @orderHistory = OrderHistoryFactory.getInstance(@order.getId())
                if @orderHistory == nil || @orderHistory.isValid() == false
                    return false
                end
                orderItems = OrderItemsEntity.new()
                @basketReview = orderItems.getBasketReview(@order.getId())
                if @basketReview == nil || @basketReview.isValid() == false
                    return false
                end
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @order.isIdValid() == false
                stringBuffer.append(@order.getIdValidationInfo())
            else
                @orderHistory = OrderHistoryFactory.getInstance(@order.getId())
                if @orderHistory == nil || @orderHistory.isValid() == false
                    stringBuffer.append("Order History data error for: ")
                    stringBuffer.append(@order.getId())
                    stringBuffer.append("<br />")
                end
                orderItems = OrderItemsEntity.new()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

