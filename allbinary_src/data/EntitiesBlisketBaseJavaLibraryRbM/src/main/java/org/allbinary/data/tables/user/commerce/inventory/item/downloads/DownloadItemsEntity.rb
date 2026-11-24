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
# package org.allbinary.data.tables.user.commerce.inventory.item.downloads

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Downloads

class DownloadItemsEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include DownloadItemsEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_inventory_item_downloads_DownloadItemsEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @tableName = "downloaditems"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_inventory_item_downloads_DownloadItemsEntity
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            DownloadItemsEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    java_overload :insert, 1
    

    def delete(value)
        begin
            DownloadItemsEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID, value)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    java_overload :delete, 1
    

    def update(updatedValues)
        DownloadItemsEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID, updatedValues.get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID), updatedValues)
    end
    java_overload :update, 1
    

    def getForItem_j1(id)
        returnVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(@basicItemData.ID, id)
        vector = DownloadItemsEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        size = vector.size()
        (0...size).each do |index|
            hashMap = vector.get(index)
            returnVector.add(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItem.new(hashMap))
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Found: " + (size).to_s, self, "getForItem")
        end
        return returnVector
    end
    

    def getForItem_j2(id, downloadItemId)
        returnVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(@basicItemData.ID, id)
        keysAndValues.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID, downloadItemId)
        vector = DownloadItemsEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        size = vector.size()
        (0...size).each do |index|
            hashMap = vector.get(index)
            returnVector.add(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItem.new(hashMap))
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Found: " + (size).to_s, self, "getForItem")
        end
        return returnVector
    end

    def getForItem(*java_overload_args)
        return getForItem_j1(*java_overload_args) if java_overload_args.length == 1
        return getForItem_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getForItem takes #{java_overload_args.length} arguments"
    end
    

    def createTableStatement()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@basicItemData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::SPECIAL_NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::VERSION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::CHANGES).append(@sqlTypeStrings.BLOB_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::SYSTEM).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::PLATFORM).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::SIZE).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::VALID_TIME).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::RETRIES).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return DownloadItemsEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return DownloadItemsEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :InventoryDbInitInfo, "org/allbinary/business/init/db/InventoryDbInitInfo" unless const_defined?(:InventoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadItemData, "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData" unless const_defined?(:DownloadItemData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

