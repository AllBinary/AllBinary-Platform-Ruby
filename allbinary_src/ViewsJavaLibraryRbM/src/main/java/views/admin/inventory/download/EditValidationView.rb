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
# package views.admin.inventory.download

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/download/DownloadableInventoryItemView"

module ::Views; module Admin; module Inventory; module Download

class EditValidationView < DownloadableInventoryItemView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :downloadItemId

    def jfields_views_admin_inventory_download_EditValidationView
        @downloadItemId = nil unless instance_variable_defined?(:@downloadItemId)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        jfields_views_admin_inventory_download_EditValidationView
        self.getFormData()
    end
    

    # throws Exception
    def getFormData()
        hashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(@request).toHashMap()
        if hashMap == nil
            raise StandardError.new("No Request Params Found")
        end
        @id = hashMap.get(@basicItemData.ID)
        @downloadItemId = hashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID)
    end
    java_overload :getFormData, 0
    

    # throws Exception
    def isValid()
        if @id == nil || !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(@id)
            return false
        end
        @itemInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@id)
        if @itemInterface == nil
            return false
        end
        downloadable = Integer(@itemInterface.getDownloads())
        if downloadable != 0
            downloadItemsEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Downloads::DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance()
            vector = downloadItemsEntity.getForItem(@id, @downloadItemId)
            if vector.size() != 1
                return false
            end
            @downloadableItem = vector.get(0)
        else
            return false
        end
        return true
    end
    java_overload :isValid, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws MoneyException
    def validationInfo()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if @id == nil || !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(@id)
            stringBuffer.append("Id is not valid.<br />")
        end
        if ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@id) == nil
            stringBuffer.append("Item does not exist.<br />")
        end
        downloadable = Integer(@itemInterface.getDownloads())
        if downloadable != 0
            if @downloadableItem == nil
                stringBuffer.append("DownloadableItem does not exist for item.<br />")
            end
        else
            stringBuffer.append("Item should not have DownloadableItem.<br />")
        end
        return stringBuffer.to_s
    end
    java_overload :validationInfo, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return EditValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadItemData, "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData" unless const_defined?(:DownloadItemData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Downloads; autoload :DownloadItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntity" unless const_defined?(:DownloadItemsEntity, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Downloads; autoload :DownloadItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory" unless const_defined?(:DownloadItemsEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end

