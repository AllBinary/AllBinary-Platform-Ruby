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

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class DownloadItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :downloadableItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @downloadableItem = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        inventoryTag = hashMap.get(AbTagData::PARENT)
        inventoryItemViewParentTagHelper = InventoryItemViewParentTagHelper.getInstance()
        downloadableInventoryItemView = inventoryItemViewParentTagHelper.getDownloadableInventoryItemView(inventoryTag)
        @downloadableItem = downloadableInventoryItemView.getDownloadableItem()
    end
    

    def insert()
        begin
            vector = @downloadableItem.toVector()
            DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().insert(vector)
            success = "Successfully inserted " + (@downloadableItem.getId()).to_s + " into downloaditems table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to insert " + (@downloadableItem.getId()).to_s + " into downloaditems table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "inserts()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().delete(@downloadableItem.getId())
            success = "Successfully deleted"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            success = "Update Successful"
            values = @downloadableItem.toHashMap()
            DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().update(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF((@downloadableItem.getId() + CommonSeps.getInstance().SPACE).to_s + success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update: " + (@downloadableItem.getId()).to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "admin/tags/AbTagData"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonSeps"
require "tags/HelperTag"
require "views/admin/inventory/download/DownloadableInventoryItemView"
require "admin/taghelpers/InventoryItemViewParentTagHelper"

