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

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class BasketView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :request

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @request = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            inventoryEntity = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            basketInterface = self.getWeblisketSession().getOrder().getBasket()
            basketNode = document.createElement(BasketData::BASKET)
            itemsAndNumberInBasket = basketInterface.getItems()
            numberOfResults = 1
            items = itemsAndNumberInBasket.keySet()
            productArray = items.toArray()
            size = productArray.length
            (0...size).each do |index|
                product = String.new(productArray[index])
                itemInterface = inventoryEntity.getItem(product)
                if itemInterface != nil
                    basicItemView = BasicItemView.new(itemInterface, BasicArrayListD.new())
                    node = basicItemView.toXmlNode(document)
                    numberInBasket = basketInterface.getNumberOf(product).to_s
                    node.appendChild(ModDomHelper.createNameValueNodes(document, BasketData::ITEMTOTALINBASKET, numberInBasket))
                    itemPrice = itemInterface.getPrice()
                    itemTotal = Money.new(itemPrice)
                    itemTotal.multiply(basketInterface.getNumberOf(product).to_i)
                    node.appendChild(ModDomHelper.createNameValueNodes(document, BasketData::ITEMTOTAL, itemTotal.to_s))
                    basketNode.appendChild(node)
                else
                    @logUtil.putF("Product Failed: " + product, self, "toXmlNode")
                end
                numberOfResults += 1
            end
            totalNumberNode = document.createElement(SearchData::TOTAL_NUMBER_ITEMS)
            totalNumberTextNode = document.createTextNode(basketInterface.getNumberOfItems().to_s)
            totalNumberNode.appendChild(totalNumberTextNode)
            totalWeightNode = document.createElement(BasketData::TOTALWEIGHT)
            totalWeightTextNode = document.createTextNode(basketInterface.getTotalWeight().to_s)
            totalWeightNode.appendChild(totalWeightTextNode)
            subTotalNode = document.createElement(BasketData::SUBTOTAL)
            subTotalTextNode = document.createTextNode(basketInterface.getSubTotal().to_s)
            subTotalNode.appendChild(subTotalTextNode)
            basketNode.appendChild(totalNumberNode)
            basketNode.appendChild(totalWeightNode)
            basketNode.appendChild(subTotalNode)
            return basketNode
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

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData"
autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
autoload :Money, "org/allbinary/business/user/commerce/money/Money"
autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchData, "org/allbinary/logic/control/search/SearchData"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

