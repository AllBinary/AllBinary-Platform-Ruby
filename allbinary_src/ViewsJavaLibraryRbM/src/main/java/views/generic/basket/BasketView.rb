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
# package views.generic.basket

require "java/lang/JavaOverload"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Generic; module Basket

class BasketView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :request

    def jfields_views_generic_basket_BasketView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_basket_BasketView
        @request = self.getPageContext().getRequest()
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            inventoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            basketInterface = self.getWeblisketSession().getOrder().getBasket()
            basketNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::BASKET)
            itemsAndNumberInBasket = basketInterface.getItems()
            numberOfResults = 1
            items = itemsAndNumberInBasket.keySet()
            productArray = items.toArray()
            size = productArray.length
            (0...size).each do |index|
                product = String.new(productArray[index])
                itemInterface = inventoryEntity.getItem(product)
                if itemInterface != nil
                    basicItemView = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(itemInterface, ::Org::Allbinary::Util::BasicArrayListD.new())
                    node = basicItemView.toXmlNode(document)
                    numberInBasket = basketInterface.getNumberOf(product).to_s
                    node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::ITEMTOTALINBASKET, numberInBasket))
                    itemPrice = itemInterface.getPrice()
                    itemTotal = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(itemPrice)
                    itemTotal.multiply(basketInterface.getNumberOf(product).to_i)
                    node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::ITEMTOTAL, itemTotal.to_s))
                    basketNode.appendChild(node)
                else
                    @logUtil.putF("Product Failed: " + product, self, "toXmlNode")
                end
                numberOfResults += 1
            end
            totalNumberNode = document.createElement(::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS)
            totalNumberTextNode = document.createTextNode(basketInterface.getNumberOfItems().to_s)
            totalNumberNode.appendChild(totalNumberTextNode)
            totalWeightNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::TOTALWEIGHT)
            totalWeightTextNode = document.createTextNode(basketInterface.getTotalWeight().to_s)
            totalWeightNode.appendChild(totalWeightTextNode)
            subTotalNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::SUBTOTAL)
            subTotalTextNode = document.createTextNode(basketInterface.getSubTotal().to_s)
            subTotalNode.appendChild(subTotalTextNode)
            basketNode.appendChild(totalNumberNode)
            basketNode.appendChild(totalWeightNode)
            basketNode.appendChild(subTotalNode)
            return basketNode
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
            return BasketView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData" unless const_defined?(:BasketData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

