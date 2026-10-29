# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.persistance


class PlatformRecordIdUtil
    attr_accessor :PLATFORM_SHORT_NAME

    def initialize_fields
        @PLATFORM_SHORT_NAME = "HTML"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PlatformRecordIdUtil.instance
    end
    

    def getRecordId(abeClientInformation, baseRecordId)
        return StringMaker.new().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(@PLATFORM_SHORT_NAME).append(baseRecordId).to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

class PlatformRecordIdUtil
    @@instance = PlatformRecordIdUtil.new()
end

