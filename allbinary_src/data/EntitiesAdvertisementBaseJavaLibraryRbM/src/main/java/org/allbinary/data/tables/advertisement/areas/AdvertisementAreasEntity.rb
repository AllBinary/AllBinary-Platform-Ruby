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
# package org.allbinary.data.tables.advertisement.areas

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/advertisement/areas/AdvertisementAreasEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Advertisement; module Areas

class AdvertisementAreasEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include AdvertisementAreasEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_advertisement_areas_AdvertisementAreasEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "advertisements"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_advertisement_areas_AdvertisementAreasEntity
        self.setTableName(@tableName)
    end
    

    def delete(value)
        begin
            AdvertisementAreasEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(::Org::Allbinary::Business::Entry::EntryData.getInstance().ID, value)
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
    

    # throws Exception
    def get_j1(storeName)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        hashMapVector = AdvertisementAreasEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = hashMapVector.size()
        (0...size).each do |index|
            hashMap = hashMapVector.get(index)
            if hashMap != nil
                vector.add(::Org::Allbinary::Business::Advertisement::Area::AdvertisementArea.new(hashMap))
            end
        end
        return vector
    end
    

    # throws Exception
    def get_j2(storeName, advertisementAreaName)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        keysAndValues.put(::Org::Allbinary::Business::Advertisement::Area::AdvertisementAreaData.getInstance().NAME, advertisementAreaName)
        hashMap = AdvertisementAreasEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
        if hashMap != nil
            return ::Org::Allbinary::Business::Advertisement::Area::AdvertisementArea.new(hashMap)
        else
            return nil
        end
    end

    def get(*java_overload_args)
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        return get_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
    end
    

    def createTableStatement()
        advertisementAreaData = ::Org::Allbinary::Business::Advertisement::Area::AdvertisementAreaData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(advertisementAreaData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData.DESCRIPTION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData.CONSTRAINTS).append(@sqlTypeStrings.BLOB_NOT_NULL).append(::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaignData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(advertisementAreaData.NAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        returnStr = AdvertisementAreasEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
        return returnStr
    end
    java_overload :createTable, 0
    

    def update(updatedValues)
        AdvertisementAreasEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::Advertisement::Area::AdvertisementAreaData.getInstance().NAME, updatedValues.get(::Org::Allbinary::Business::Advertisement::Area::AdvertisementAreaData.getInstance().NAME), updatedValues)
    end
    java_overload :update, 1
    

    def dropTable()
        return AdvertisementAreasEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    def insert(values)
        AdvertisementAreasEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end
    java_overload :insert, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Area; autoload :AdvertisementArea, "org/allbinary/business/advertisement/area/AdvertisementArea" unless const_defined?(:AdvertisementArea, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Area; autoload :AdvertisementAreaData, "org/allbinary/business/advertisement/area/AdvertisementAreaData" unless const_defined?(:AdvertisementAreaData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Area; autoload :AdvertisementAreaInterface, "org/allbinary/business/advertisement/area/AdvertisementAreaInterface" unless const_defined?(:AdvertisementAreaInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaignData, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData" unless const_defined?(:AdvertisementCampaignData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

