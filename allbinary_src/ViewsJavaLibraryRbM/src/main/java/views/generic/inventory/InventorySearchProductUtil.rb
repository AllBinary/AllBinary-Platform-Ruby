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
        InventorySearchProductUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InventorySearchProductUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InventorySearchProductUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InventorySearchProductUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :StoreTransformer, "org/allbinary/logic/visual/transform/StoreTransformer"
autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
autoload :TransformStoreDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory"
autoload :TransformInfoHttpSearch, "org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    InventorySearchProductUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

