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


module ::Views; module Generic; module Inventory

class InventorySearchProductUtil
    attr_accessor :logUtil, :commonStrings, :ITEM_NOT_FOUND

    def jfields_views_generic_inventory_InventorySearchProductUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @ITEM_NOT_FOUND = "Item Not Found."
    end

    def initialize
        jfields_views_generic_inventory_InventorySearchProductUtil
    end
    

    def self.getInstance()
        return InventorySearchProductUtil.instance
    end
    

    # throws Exception
    def getProduct(abeClientInformation, searchRequest, product)
        begin
            inventoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            itemInterface = inventoryEntityInterface.getItem(product)
            if itemInterface != nil
                viewDocumentInterface = ::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformStoreDocumentFactory.getInstance(searchRequest)
                viewDocumentInterface.getBaseNode().appendChild(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(itemInterface, ::Org::Allbinary::Util::BasicArrayListD.new()).toXmlNode(viewDocumentInterface.getDoc()))
                success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(viewDocumentInterface.getDoc())
                outputStr = ::Org::Allbinary::Logic::Visual::Transform::StoreTransformer.new(abeClientInformation, ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpSearch.new(searchRequest)).translate(success)
                return outputStr
            else
                return @ITEM_NOT_FOUND
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :StoreTransformer, "org/allbinary/logic/visual/transform/StoreTransformer" unless const_defined?(:StoreTransformer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformStoreDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory" unless const_defined?(:TransformStoreDocumentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpSearch, "org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch" unless const_defined?(:TransformInfoHttpSearch, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    InventorySearchProductUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

