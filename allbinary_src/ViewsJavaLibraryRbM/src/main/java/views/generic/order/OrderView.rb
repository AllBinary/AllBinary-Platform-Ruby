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

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class OrderView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :request, :order, :orderHistory, :basketReview

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @request = nil
        @order = nil
        @orderHistory = nil
        @basketReview = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    # throws Exception
    def getFormData()
        id = @request.getParameter(OrderData::ID)
        if id == nil
            id = self.getWeblisketSession().getOrder().getId()
        end
        @order = Order.new(Basket.new())
        @order.setId(id)
    end
    

    def toXmlNode(document)
        begin
            orderHistoryNode = @orderHistory.toXmlNode(document)
            node = document.createElement(@orderHistory.getPaymentMethod())
            orderHistoryNode.appendChild(@basketReview.toXmlNode(document))
            node.appendChild(orderHistoryNode)
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/user/commerce/inventory/basket/Basket"
require "org/allbinary/business/user/commerce/inventory/basket/BasketReview"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

