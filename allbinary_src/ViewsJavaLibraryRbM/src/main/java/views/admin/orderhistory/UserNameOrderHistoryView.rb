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
# package views.admin.orderhistory

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Orderhistory

class UserNameOrderHistoryView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :request, :userName, :shipped, :partiallyShipped, :processing, :preprocessing, :cancelled, :ON

    def jfields_views_admin_orderhistory_UserNameOrderHistoryView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @userName = nil unless instance_variable_defined?(:@userName)
        @shipped = nil unless instance_variable_defined?(:@shipped)
        @partiallyShipped = nil unless instance_variable_defined?(:@partiallyShipped)
        @processing = nil unless instance_variable_defined?(:@processing)
        @preprocessing = nil unless instance_variable_defined?(:@preprocessing)
        @cancelled = nil unless instance_variable_defined?(:@cancelled)
        @ON = "on"
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_orderhistory_UserNameOrderHistoryView
        @request = self.getPageContext().getRequest()
        @userName = @request.getParameter(::Org::Allbinary::Business::User::UserData::USERNAME)
        @preprocessing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSINGNAME)
        @shipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDNAME)
        @partiallyShipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPEDNAME)
        @processing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSINGNAME)
        @cancelled = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLEDNAME)
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return UserNameOrderHistoryView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    def toXmlNode(document)
        begin
            node = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ORDERS)
            orderHistoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntity.new()
            orderReviewVector = orderHistoryEntity.getOrders(@userName)
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
            return nil
        end
    end
    java_overload :toXmlNode, 1
    

    def isValid()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started", self, @commonStrings.IS_VALID)
        end
        if ::Org::Allbinary::Business::User::Username::UserName.getInstance().isValid(@userName) == true
            return true
        end
        return false
    end
    java_overload :isValid, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    def validationInfo()
        if @userName == nil
            return "No User Name Specified<br />"
        end
        if ::Org::Allbinary::Business::User::Username::UserName.getInstance().isValid(@userName) == false
            return "Invalid User Name<br />"
        end
        return "Unknown Error<br />"
    end
    java_overload :validationInfo, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return UserNameOrderHistoryView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Username; autoload :UserName, "org/allbinary/business/user/username/UserName" unless const_defined?(:UserName, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity" unless const_defined?(:OrderHistoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

