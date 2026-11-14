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

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class ShippingMethodsView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :shippingMethods, :storeFrontInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @shippingMethods = nil
        @storeFrontInterface = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @storeFrontInterface = StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
        @shippingMethods = ShippingMethods.new(@abeClientInformation, @storeFrontInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            shippingMethodsNode = document.createElement(ShippingMethodsData::SHIPPINGMETHODSORDERSUMMARIES)
            order = self.getWeblisketSession().getOrder()
            basket = self.getWeblisketSession().getOrder().getBasket()
            shippingAddressesEntityInterface = ShippingAddressesEntityFactory.getInstance().getInstance(self.getWeblisketSession().getUserName())
            streetAddress = shippingAddressesEntityInterface.getDefault()
            shippingVector = @shippingMethods.get()
            size = shippingVector.size()
            (0...size).each do |index|
                shippingMethodNode = document.createElement(ShippingMethodsData::SHIPPINGMETHODORDERSUMMARY)
                shipping = shippingVector.get(index)
                shippingView = shipping
                shippingMethodNode.appendChild(shippingView.toXmlNode(document))
                shippingCost = shipping.getCost(order)
                subTotal = basket.getSubTotal()
                taxRate = TaxFactory.getInstance().getInstance(@abeClientInformation, @storeFrontInterface).getTaxRate(streetAddress, @storeFrontInterface)
                tax = Money.new()
                total = Money.new()
                total.add(shippingCost.to_s)
                total.add(subTotal.to_s)
                tax.add(total.to_s)
                tax.multiply(taxRate)
                total.add(tax.to_s)
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodsData::SHIPPINGCOST, shippingCost.to_s))
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodsData::TAXRATE, taxRate.to_s))
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodsData::SUBTOTAL, subTotal.to_s))
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodsData::TAX, tax.to_s))
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodsData::TOTAL, total.to_s))
                shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, EntryData.getInstance().DEFAULT, @shippingMethods.getDefault().getName()))
                shippingMethodsNode.appendChild(shippingMethodNode)
            end
            return shippingMethodsNode
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
    

    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            error = "Failed to view ShippingMethods"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
autoload :Money, "org/allbinary/business/user/commerce/money/Money"
autoload :TaxFactory, "org/allbinary/business/user/commerce/money/tax/TaxFactory"
autoload :ShippingMethods, "org/allbinary/business/user/commerce/shipping/ShippingMethods"
autoload :ShippingMethodsData, "org/allbinary/business/user/commerce/shipping/ShippingMethodsData"
autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"
autoload :StreetAddressesEntityInterface, "org/allbinary/data/tables/user/address/StreetAddressesEntityInterface"
autoload :ShippingAddressesEntityFactory, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

