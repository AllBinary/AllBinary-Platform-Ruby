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
# package views.generic.shipping

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Generic; module Shipping

class ShippingMethodsView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :shippingMethods, :storeFrontInterface

    def jfields_views_generic_shipping_ShippingMethodsView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @shippingMethods = nil unless instance_variable_defined?(:@shippingMethods)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_shipping_ShippingMethodsView
        @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
        @shippingMethods = ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethods.new(@abeClientInformation, @storeFrontInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            shippingMethodsNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::SHIPPINGMETHODSORDERSUMMARIES)
            order = self.getWeblisketSession().getOrder()
            basket = self.getWeblisketSession().getOrder().getBasket()
            shippingAddressesEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(self.getWeblisketSession().getUserName())
            streetAddress = shippingAddressesEntityInterface.getDefault()
            shippingVector = @shippingMethods.get()
            size = shippingVector.size()
            (0...size).each do |index|
                shippingMethodNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::SHIPPINGMETHODORDERSUMMARY)
                shipping = shippingVector.get(index)
                shippingView = shipping
                shippingMethodNode.appendChild(shippingView.toXmlNode(document))
                shippingCost = shipping.getCost(order)
                subTotal = basket.getSubTotal()
                taxRate = ::Org::Allbinary::Business::User::Commerce::Money::Tax::TaxFactory.getInstance().getInstance(@abeClientInformation, @storeFrontInterface).getTaxRate(streetAddress, @storeFrontInterface)
                tax = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
                total = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
                total.add(shippingCost.to_s)
                total.add(subTotal.to_s)
                tax.add(total.to_s)
                tax.multiply(taxRate)
                total.add(tax.to_s)
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::SHIPPINGCOST, shippingCost.to_s))
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::TAXRATE, taxRate.to_s))
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::SUBTOTAL, subTotal.to_s))
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::TAX, tax.to_s))
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodsData::TOTAL, total.to_s))
                shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, @shippingMethods.getDefault().getName()))
                shippingMethodsNode.appendChild(shippingMethodNode)
            end
            return shippingMethodsNode
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
    

    def view()
        begin
            self.addDomNodeInterfaces()
            return ShippingMethodsView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            error = "Failed to view ShippingMethods"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; autoload :TaxFactory, "org/allbinary/business/user/commerce/money/tax/TaxFactory" unless const_defined?(:TaxFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethods, "org/allbinary/business/user/commerce/shipping/ShippingMethods" unless const_defined?(:ShippingMethods, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodsData, "org/allbinary/business/user/commerce/shipping/ShippingMethodsData" unless const_defined?(:ShippingMethodsData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface" unless const_defined?(:ShippingInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; autoload :StreetAddressesEntityInterface, "org/allbinary/data/tables/user/address/StreetAddressesEntityInterface" unless const_defined?(:StreetAddressesEntityInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntityFactory, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory" unless const_defined?(:ShippingAddressesEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

