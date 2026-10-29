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
# package views.generic.inventory

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class InventoryView < HttpStoreComponentView
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Starting", self, "toXmlNode")
            end
            inventoryEntityInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            inventoryNode = document.createElement(InventoryData::INVENTORY)
            itemVector = inventoryEntityInterface.getItems(StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName()))
            inventoryNode.appendChild(ModDomHelper.createNameValueNodes(document, SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, itemVector.size().to_s))
            size = itemVector.size()
            (0...size).each do |index|
                itemInterface = itemVector.get(index)
                if itemInterface != nil
                    node = BasicItemView.new(itemInterface, BasicArrayListD.new()).toXmlNode(document)
                    inventoryNode.appendChild(node)
                else
                    @logUtil.putF("Inventory", self, "toXmlNode")
                end
            end
            return inventoryNode
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
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
            error = "Failed to view Inventory"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/user/commerce/inventory/InventoryData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

