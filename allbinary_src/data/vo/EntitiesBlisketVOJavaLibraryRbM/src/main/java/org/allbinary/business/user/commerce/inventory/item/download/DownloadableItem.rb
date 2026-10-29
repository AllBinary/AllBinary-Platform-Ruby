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


class DownloadableItem
    attr_accessor :id, :basicItemId, :enabled, :system, :platform, :specialName, :version, :changes, :licenseFile, :file, :size, :validTime, :retries

    def initialize_fields
        @id = nil
        @basicItemId = nil
        @enabled = nil
        @system = nil
        @platform = nil
        @specialName = nil
        @version = nil
        @changes = nil
        @licenseFile = nil
        @file = nil
        @size = nil
        @validTime = nil
        @retries = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(id)
        initialize_fields
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @id = ProductIdGenerator.new().getNext()
        @basicItemId = id
        @enabled = EntryData.getInstance().YES
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
    

    def constructor1(hashMap)
        initialize_fields
        @id = hashMap.get(DownloadItemData::ID)
        @basicItemId = hashMap.get(BasicItemData.getInstance().ID)
        @enabled = hashMap.get(EntryData.getInstance().ENABLE)
        @system = hashMap.get(DownloadItemData::SYSTEM)
        @platform = hashMap.get(DownloadItemData::PLATFORM)
        @specialName = hashMap.get(DownloadItemData::SPECIAL_NAME)
        @version = hashMap.get(DownloadItemData::VERSION)
        @changes = hashMap.get(DownloadItemData::CHANGES)
        @licenseFile = hashMap.get(DownloadItemData::LICENSE_FILE)
        @file = hashMap.get(DownloadItemData::FILE)
        value = hashMap.get(DownloadItemData::SIZE)
        if !StringValidationUtil.getInstance().isEmpty(value)
            @size = (value).to_s
        else
            @size = 0
        end
        validTime = hashMap.get(DownloadItemData::VALID_TIME)
        if !StringValidationUtil.getInstance().isEmpty(validTime)
            @validTime = (validTime).to_s
        else
            totalYears = hashMap.get(DownloadItemData::VALID_TIME_YEARS)
            totalMonths = hashMap.get(DownloadItemData::VALID_TIME_MONTHS)
            totalDays = hashMap.get(DownloadItemData::VALID_TIME_DAYS)
            totalHours = hashMap.get(DownloadItemData::VALID_TIME_HOURS)
            totalMinutes = hashMap.get(DownloadItemData::VALID_TIME_MINUTES)
            totalSeconds = hashMap.get(DownloadItemData::VALID_TIME_SECONDS)
            totalTime = TimeUtil.getInstance().getTotalTime(totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds)
            @validTime = totalTime
        end
        @retries = hashMap.get(DownloadItemData::RETRIES)
    end
    

    def toVector()
        calendar = Calendar.getInstance()
        time = calendar.getTimeInMillis().to_s
        values = BasicArrayListD.new()
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
        values = StdUtil.getInstance().createHashMap()
        values.put(DownloadItemData::ID, self.getId())
        values.put(BasicItemData.getInstance().ID, @basicItemId)
        values.put(EntryData.getInstance().ENABLE, @enabled)
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
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(EntryData.getInstance().LASTMODIFIED, time)
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

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/data/generator/ProductIdGenerator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/time/TimeUtil"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData"

