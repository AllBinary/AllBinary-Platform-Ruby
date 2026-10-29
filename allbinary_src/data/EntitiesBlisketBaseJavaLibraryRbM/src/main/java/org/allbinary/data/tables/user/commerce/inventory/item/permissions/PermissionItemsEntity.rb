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
# package org.allbinary.data.tables.user.commerce.inventory.item.permissions

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/item/permissions/PermissionItemsEntityInterface"

class PermissionItemsEntity < AbSqlBean
    include PermissionItemsEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @tableName = "permissionitems"
    end
    

    def initialize()
        super(InventoryDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            super(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(@basicItemData.ID, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(@basicItemData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@basicItemData.NUMBER).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().ENABLE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PermissionItemData::WHO).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PermissionItemData::WHAT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PermissionItemData::TYPE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PermissionItemData::REMOTE_ADDR).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PermissionItemData::START_TIME).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(PermissionItemData::END_TIME).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@basicItemData.PRICE).append(" DECIMAL (11,2) NOT NULL,").append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(@basicItemData.ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(@basicItemData.ID, updatedValues.get(@basicItemData.ID), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/permission/PermissionItemData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

