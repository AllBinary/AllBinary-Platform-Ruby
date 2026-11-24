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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Generic; module Inventory

class InventoryView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil

    def jfields_views_generic_inventory_InventoryView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_inventory_InventoryView
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Starting", self, "toXmlNode")
            end
            inventoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            inventoryNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::InventoryData::INVENTORY)
            itemVector = inventoryEntityInterface.getItems(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName()))
            inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, itemVector.size().to_s))
            size = itemVector.size()
            (0...size).each do |index|
                itemInterface = itemVector.get(index)
                if itemInterface != nil
                    node = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(itemInterface, ::Org::Allbinary::Util::BasicArrayListD.new()).toXmlNode(document)
                    inventoryNode.appendChild(node)
                else
                    @logUtil.putF("Inventory", self, "toXmlNode")
                end
            end
            return inventoryNode
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
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
            return InventoryView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            error = "Failed to view Inventory"
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
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; autoload :InventoryData, "org/allbinary/business/user/commerce/inventory/InventoryData" unless const_defined?(:InventoryData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
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

