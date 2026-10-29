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


class InventorySearchProductUtil
    attr_accessor :logUtil, :commonStrings, :ITEM_NOT_FOUND

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @ITEM_NOT_FOUND = "Item Not Found."
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return InventorySearchProductUtil.instance
    end
    

    # throws Exception
    def getProduct(abeClientInformation, searchRequest, product)
        begin
            inventoryEntityInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            itemInterface = inventoryEntityInterface.getItem(product)
            if itemInterface != nil
                viewDocumentInterface = TransformStoreDocumentFactory.getInstance(searchRequest)
                viewDocumentInterface.getBaseNode().appendChild(BasicItemView.new(itemInterface, BasicArrayListD.new()).toXmlNode(viewDocumentInterface.getDoc()))
                success = XmlDocumentHelper.toString(viewDocumentInterface.getDoc())
                outputStr = StoreTransformer.new(abeClientInformation, TransformInfoHttpSearch.new(searchRequest)).translate(success)
                return outputStr
            else
                return @ITEM_NOT_FOUND
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "getProduct", e)
            end
            raise StandardError.new("Failed to getProduct")
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/StoreTransformer"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"

class InventorySearchProductUtil
    @@instance = InventorySearchProductUtil.new()
end

