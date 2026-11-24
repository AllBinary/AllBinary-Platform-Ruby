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
# package org.allbinary.business.user.commerce.inventory.item.download


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download

class DownloadableItem
    attr_accessor :id, :basicItemId, :enabled, :system, :platform, :specialName, :version, :changes, :licenseFile, :file, :size, :validTime, :retries

    def jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem
        @id = nil unless instance_variable_defined?(:@id)
        @basicItemId = nil unless instance_variable_defined?(:@basicItemId)
        @enabled = nil unless instance_variable_defined?(:@enabled)
        @system = nil unless instance_variable_defined?(:@system)
        @platform = nil unless instance_variable_defined?(:@platform)
        @specialName = nil unless instance_variable_defined?(:@specialName)
        @version = nil unless instance_variable_defined?(:@version)
        @changes = nil unless instance_variable_defined?(:@changes)
        @licenseFile = nil unless instance_variable_defined?(:@licenseFile)
        @file = nil unless instance_variable_defined?(:@file)
        @size = nil unless instance_variable_defined?(:@size)
        @validTime = nil unless instance_variable_defined?(:@validTime)
        @retries = nil unless instance_variable_defined?(:@retries)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1(*args)
        else raise ArgumentError, "No constructor of DownloadableItem takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1(*java_overload_args)
        return jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1_1(id)
        jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @id = ::Org::Allbinary::DataPackage::Generator::ProductIdGenerator.new().getNext()
        @basicItemId = id
        @enabled = ::Org::Allbinary::Business::Entry::EntryData.getInstance().YES
        @system = "Java"
        @platform = "Android"
        @specialName = _EMPTY_STRING
        @version = _EMPTY_STRING
        @changes = _EMPTY_STRING
        @licenseFile = _EMPTY_STRING
        @file = _EMPTY_STRING
        @size = (0).to_s
        @validTime = (0).to_s
        @retries = _EMPTY_STRING
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem_1_2(hashMap)
        jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItem
        @id = hashMap.get(DownloadItemData::ID)
        @basicItemId = hashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance().ID)
        @enabled = hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE)
        @system = hashMap.get(DownloadItemData::SYSTEM)
        @platform = hashMap.get(DownloadItemData::PLATFORM)
        @specialName = hashMap.get(DownloadItemData::SPECIAL_NAME)
        @version = hashMap.get(DownloadItemData::VERSION)
        @changes = hashMap.get(DownloadItemData::CHANGES)
        @licenseFile = hashMap.get(DownloadItemData::LICENSE_FILE)
        @file = hashMap.get(DownloadItemData::FILE)
        value = hashMap.get(DownloadItemData::SIZE)
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(value)
            @size = (value).to_s
        else
            @size = 0
        end
        validTime = hashMap.get(DownloadItemData::VALID_TIME)
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(validTime)
            @validTime = (validTime).to_s
        else
            totalYears = hashMap.get(DownloadItemData::VALID_TIME_YEARS)
            totalMonths = hashMap.get(DownloadItemData::VALID_TIME_MONTHS)
            totalDays = hashMap.get(DownloadItemData::VALID_TIME_DAYS)
            totalHours = hashMap.get(DownloadItemData::VALID_TIME_HOURS)
            totalMinutes = hashMap.get(DownloadItemData::VALID_TIME_MINUTES)
            totalSeconds = hashMap.get(DownloadItemData::VALID_TIME_SECONDS)
            totalTime = ::Org::Allbinary::TimePackage::TimeUtil.getInstance().getTotalTime(totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds)
            @validTime = totalTime
        end
        @retries = hashMap.get(DownloadItemData::RETRIES)
    end
    

    def toVector()
        calendar = ::Java::Util::Calendar.getInstance()
        time = calendar.getTimeInMillis().to_s
        values = ::Org::Allbinary::Util::BasicArrayListD.new()
        values.add(getId())
        values.add(@basicItemId)
        values.add(@enabled)
        values.add(self.getSpecialName())
        values.add(self.getVersion())
        values.add(self.getChanges())
        values.add(self.getSystem())
        values.add(self.getPlatform())
        values.add(self.getLicenseFile())
        values.add(self.getFile())
        values.add(self.getSize().to_s)
        values.add(self.getValidTime().to_s)
        values.add(self.getRetries())
        values.add(time)
        values.add(time)
        return values
    end
    

    def toHashMap()
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        values.put(DownloadItemData::ID, self.getId())
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance().ID, @basicItemId)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, @enabled)
        values.put(DownloadItemData::SYSTEM, self.getSystem())
        values.put(DownloadItemData::PLATFORM, self.getPlatform())
        values.put(DownloadItemData::SPECIAL_NAME, self.getSpecialName())
        values.put(DownloadItemData::VERSION, self.getVersion())
        values.put(DownloadItemData::CHANGES, self.getChanges())
        values.put(DownloadItemData::LICENSE_FILE, self.getLicenseFile())
        values.put(DownloadItemData::FILE, self.getFile())
        values.put(DownloadItemData::SIZE, self.getSize().to_s)
        values.put(DownloadItemData::VALID_TIME, self.getValidTime().to_s)
        values.put(DownloadItemData::RETRIES, self.getRetries())
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    

    def getId()
        return @id
    end
    

    def getSystem()
        return @system
    end
    

    def getPlatform()
        return @platform
    end
    

    def getSpecialName()
        return @specialName
    end
    

    def getVersion()
        return @version
    end
    

    def getChanges()
        return @changes
    end
    

    def getLicenseFile()
        return @licenseFile
    end
    

    def getFile()
        return @file
    end
    

    def getSize()
        return @size
    end
    

    def getValidTime()
        return @validTime
    end
    

    def getRetries()
        return @retries
    end
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :ProductIdGenerator, "org/allbinary/data/generator/ProductIdGenerator" unless const_defined?(:ProductIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeUtil, "org/allbinary/time/TimeUtil" unless const_defined?(:TimeUtil, false); end; end; end
autoload :DownloadItemData, "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData" unless const_defined?(:DownloadItemData, false)

end; end; end; end; end; end; end; end

