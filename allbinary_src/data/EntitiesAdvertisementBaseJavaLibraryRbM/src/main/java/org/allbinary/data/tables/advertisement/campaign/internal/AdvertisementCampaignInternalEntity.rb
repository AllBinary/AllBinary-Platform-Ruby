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
# package org.allbinary.data.tables.advertisement.campaign.internal

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Advertisement; module Campaign; module Internal

class AdvertisementCampaignInternalEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include AdvertisementCampaignInternalEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_advertisement_campaign_internal_AdvertisementCampaignInternalEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "adCampaignInternal"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_advertisement_campaign_internal_AdvertisementCampaignInternalEntity
        self.setTableName(@tableName)
    end
    

    def delete(value)
        begin
            AdvertisementCampaignInternalEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, value)
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
    

    def getCampaignsInStore(storeName)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        hashMapVector = AdvertisementCampaignInternalEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = hashMapVector.size()
        (0...size).each do |index|
            hashMap = hashMapVector.get(index)
            if hashMap != nil
                vector.add(::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaign.new(hashMap))
            end
        end
        return ::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaigns.new(vector)
    end
    java_overload :getCampaignsInStore, 1
    

    def get(storeName, name)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        keysAndValues.put(::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaignData.getInstance().NAME, name)
        hashMap = AdvertisementCampaignInternalEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
        if hashMap != nil
            return ::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaign.new(hashMap)
        else
            return nil
        end
    end
    java_overload :get, 2
    

    def update(updatedValues)
        AdvertisementCampaignInternalEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::Entry::EntryData.getInstance().getInstance().ID, updatedValues.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().getInstance().ID), updatedValues)
    end
    java_overload :update, 1
    

    def createTableStatement()
        entryData = ::Org::Allbinary::Business::Entry::EntryData.getInstance().getInstance()
        advertisementCampaignData = ::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaignData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(entryData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.DESCRIPTION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.CONFIG).append(@sqlTypeStrings.BLOB_NOT_NULL).append(::Org::Allbinary::Business::TimePackage::TimeData.getInstance().START).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::TimePackage::TimeData.getInstance().END_).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(entryData.ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        returnStr = AdvertisementCampaignInternalEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
        return returnStr
    end
    java_overload :createTable, 0
    

    def dropTable()
        return AdvertisementCampaignInternalEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    def insert(values)
        AdvertisementCampaignInternalEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end
    java_overload :insert, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaign, "org/allbinary/business/advertisement/campaign/AdvertisementCampaign" unless const_defined?(:AdvertisementCampaign, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaignData, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData" unless const_defined?(:AdvertisementCampaignData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaignInterface, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface" unless const_defined?(:AdvertisementCampaignInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaigns, "org/allbinary/business/advertisement/campaign/AdvertisementCampaigns" unless const_defined?(:AdvertisementCampaigns, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaignsInterface, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface" unless const_defined?(:AdvertisementCampaignsInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; autoload :TimeData, "org/allbinary/business/time/TimeData" unless const_defined?(:TimeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

