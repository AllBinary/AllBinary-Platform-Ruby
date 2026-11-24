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
# package admin.taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

module ::Admin; module Taghelpers

class DownloadItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :downloadableItem

    def jfields_admin_taghelpers_DownloadItemsRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @downloadableItem = nil unless instance_variable_defined?(:@downloadableItem)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_DownloadItemsRequestHelper
        inventoryTag = hashMap.get(::Admin::Tags::AbTagData::PARENT)
        inventoryItemViewParentTagHelper = InventoryItemViewParentTagHelper.getInstance()
        downloadableInventoryItemView = inventoryItemViewParentTagHelper.getDownloadableInventoryItemView(inventoryTag)
        @downloadableItem = downloadableInventoryItemView.getDownloadableItem()
    end
    

    def insert()
        begin
            vector = @downloadableItem.toVector()
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Downloads::DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().insert(vector)
            success = "Successfully inserted " + (@downloadableItem.getId()).to_s + " into downloaditems table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to insert " + (@downloadableItem.getId()).to_s + " into downloaditems table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "inserts()", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    def delete()
        begin
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Downloads::DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().delete(@downloadableItem.getId())
            success = "Successfully deleted"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
    

    def update()
        begin
            success = "Update Successful"
            values = @downloadableItem.toHashMap()
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Downloads::DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().update(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF((@downloadableItem.getId() + ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).to_s + success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update: " + (@downloadableItem.getId()).to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Admin; module Tags; autoload :AbTagData, "admin/tags/AbTagData" unless const_defined?(:AbTagData, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Downloads; autoload :DownloadItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory" unless const_defined?(:DownloadItemsEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Tags; autoload :HelperTag, "tags/HelperTag" unless const_defined?(:HelperTag, false); end
module ::Views; module Admin; module Inventory; module Download; autoload :DownloadableInventoryItemView, "views/admin/inventory/download/DownloadableInventoryItemView" unless const_defined?(:DownloadableInventoryItemView, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InventoryItemViewParentTagHelper, "admin/taghelpers/InventoryItemViewParentTagHelper" unless const_defined?(:InventoryItemViewParentTagHelper, false)

end; end

