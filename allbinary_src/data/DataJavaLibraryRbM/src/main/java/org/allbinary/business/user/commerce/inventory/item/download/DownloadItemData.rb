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

class DownloadItemData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "DOWNLOADITEM_NAME")
        const_set(:ID, "DOWNLOADITEM_ID")
        const_set(:SYSTEM, "DOWNLOADITEM_SYSTEM")
        const_set(:PLATFORM, "DOWNLOADITEM_PLATFORM")
        const_set(:SPECIAL_NAME, "DOWNLOADITEM_SPECIAL_NAME")
        const_set(:VERSION, "DOWNLOADITEM_VERSION")
        const_set(:CHANGES, "DOWNLOADITEM_CHANGES")
        const_set(:LICENSE_FILE, "DOWNLOADITEM_LICENSE_FILE")
        const_set(:FILE, "DOWNLOADITEM_FILE")
        const_set(:EXTRA_FILES, "DOWNLOADITEM_EXTRA_FILES")
        const_set(:SIZE, "DOWNLOADITEM_SIZE")
        const_set(:VALID_TIME, "DOWNLOADITEM_VALID_TIME")
        const_set(:VALID_TIME_YEARS, "DOWNLOADITEM_VALID_TIME_YEAR")
        const_set(:VALID_TIME_MONTHS, "DOWNLOADITEM_VALID_TIME_MONTH")
        const_set(:VALID_TIME_DAYS, "DOWNLOADITEM_VALID_TIME_DAY")
        const_set(:VALID_TIME_HOURS, "DOWNLOADITEM_VALID_TIME_HOUR")
        const_set(:VALID_TIME_MINUTES, "DOWNLOADITEM_VALID_TIME_MINUTES")
        const_set(:VALID_TIME_SECONDS, "DOWNLOADITEM_VALID_TIME_SECONDS")
        const_set(:RETRIES, "DOWNLOADITEM_RETRIES")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DownloadItemData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :ID, :SYSTEM, :PLATFORM, :SPECIAL_NAME, :VERSION, :CHANGES, :LICENSE_FILE, :FILE, :EXTRA_FILES, :SIZE, :VALID_TIME, :VALID_TIME_YEARS, :VALID_TIME_MONTHS, :VALID_TIME_DAYS, :VALID_TIME_HOURS, :VALID_TIME_MINUTES, :VALID_TIME_SECONDS, :RETRIES].include?(name)
        end
        super
    end
end

begin
    DownloadItemData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

