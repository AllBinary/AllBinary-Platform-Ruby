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

class InventoryRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :itemInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @itemInterface = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        inventoryTag = propertiesHashMap.get(AbTagData::PARENT)
        itemView = InventoryItemViewParentTagHelper.getInstance().getInventoryItemView(inventoryTag)
        @itemInterface = itemView.getItemInterface()
    end
    

    # throws Exception
    def insert()
        begin
            dataMappingInterface = self.getItemInterface()
            values = dataMappingInterface.toVector()
            InventoryEntityFactory.getInstance().getInventoryEntityInstance().insert(values)
            success = "Successfully Added Product"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add item to Inventory"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            dataMappingInterface = self.getItemInterface()
            id = dataMappingInterface.getKey()
            InventoryEntityFactory.getInstance().getInventoryEntityInstance().deleteWhere(@basicItemData.ID, id)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Successfully Removed the item with ")
            stringBuffer.append(@basicItemData.ID)
            stringBuffer.append("=")
            stringBuffer.append(id)
            stringBuffer.append(" from to the Inventory table")
            success = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @tagStrings.DO_START_TAG)
            end
            return success
        rescue StandardError => e
            error = "Failed to remove item with from Inventory"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @tagStrings.DO_START_TAG, e)
            end
            return error
        end
    end
    

    def update()
        begin
            self.delete()
            self.insert()
            success = "Item Successfully Updated"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed To Update Item"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    def getItemInterface()
        return @itemInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "admin/tags/AbTagData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "tags/HelperTag"
require "views/admin/inventory/InventoryItemView"
require "admin/taghelpers/InventoryItemViewParentTagHelper"

