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
# package views.generic.basket.mini

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class MiniBasketView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            basketInterface = self.getWeblisketSession().getOrder().getBasket()
            basketNode = document.createElement(BasketData::BASKET)
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

require "org/allbinary/business/user/commerce/inventory/basket/BasketData"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

