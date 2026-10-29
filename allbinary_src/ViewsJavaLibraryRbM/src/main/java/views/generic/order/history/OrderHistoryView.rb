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
# package views.generic.order.history

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class OrderHistoryView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :request, :shipped, :partiallyShipped, :processing, :preprocessing, :cancelled

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @request = nil
        @shipped = nil
        @partiallyShipped = nil
        @processing = nil
        @preprocessing = nil
        @cancelled = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
        @preprocessing = @request.getParameter(OrderHistoryData::PREPROCESSINGNAME)
        @shipped = @request.getParameter(OrderHistoryData::SHIPPEDNAME)
        @partiallyShipped = @request.getParameter(OrderHistoryData::PARTIALLYSHIPPEDNAME)
        @processing = @request.getParameter(OrderHistoryData::PROCESSINGNAME)
        @cancelled = @request.getParameter(OrderHistoryData::CANCELLEDNAME)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            node = document.createElement(OrderData::ORDERS)
            orderHistoryEntity = OrderHistoryEntity.new()
            orderReviewVector = orderHistoryEntity.getOrders(self.getWeblisketSession().getUserName())
            size = orderReviewVector.size()
            (0...size).each do |index|
                orderHistory = orderReviewVector.get(index)
                orderHistoryNode = orderHistory.toXmlNode(document)
                orderNode = document.createElement(orderHistory.getPaymentMethod())
                node.appendChild(orderHistory.toXmlNode(document))
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Attempt to View a users order history", self, "view")
            end
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PREPROCESSINGNAME, OrderHistoryData::PREPROCESSING))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PROCESSINGNAME, OrderHistoryData::PROCESSING))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::CANCELLEDNAME, OrderHistoryData::CANCELLED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PARTIALLYSHIPPEDNAME, OrderHistoryData::PARTIALLYSHIPPED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::SHIPPEDNAME, OrderHistoryData::SHIPPED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, GLOBALS2.VIEWNAME, GLOBALS2.VIEW))
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            raise e
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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

