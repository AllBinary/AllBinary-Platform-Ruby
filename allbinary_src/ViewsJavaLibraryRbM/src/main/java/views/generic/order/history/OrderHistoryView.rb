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

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Generic; module Order; module History

class OrderHistoryView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :request, :shipped, :partiallyShipped, :processing, :preprocessing, :cancelled

    def jfields_views_generic_order_history_OrderHistoryView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @shipped = nil unless instance_variable_defined?(:@shipped)
        @partiallyShipped = nil unless instance_variable_defined?(:@partiallyShipped)
        @processing = nil unless instance_variable_defined?(:@processing)
        @preprocessing = nil unless instance_variable_defined?(:@preprocessing)
        @cancelled = nil unless instance_variable_defined?(:@cancelled)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_order_history_OrderHistoryView
        @request = self.getPageContext().getRequest()
        @preprocessing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSINGNAME)
        @shipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDNAME)
        @partiallyShipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPEDNAME)
        @processing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSINGNAME)
        @cancelled = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLEDNAME)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            node = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ORDERS)
            orderHistoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntity.new()
            orderReviewVector = orderHistoryEntity.getOrders(self.getWeblisketSession().getUserName())
            size = orderReviewVector.size()
            (0...size).each do |index|
                orderHistory = orderReviewVector.get(index)
                orderHistoryNode = orderHistory.toXmlNode(document)
                orderNode = document.createElement(orderHistory.getPaymentMethod())
                node.appendChild(orderHistory.toXmlNode(document))
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Attempt to View a users order history", self, "view")
            end
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSINGNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSINGNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSING))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Globals::GLOBALS2::VIEWNAME, ::Org::Allbinary::Globals::GLOBALS2::VIEW))
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            raise e
        end
    end
    java_overload :toXmlNode, 1
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return OrderHistoryView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity" unless const_defined?(:OrderHistoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

