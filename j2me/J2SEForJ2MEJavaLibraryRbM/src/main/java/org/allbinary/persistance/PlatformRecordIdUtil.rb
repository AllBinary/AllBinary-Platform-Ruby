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
        @PLATFORM_SHORT_NAME = "JSE"
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
        PlatformRecordIdUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlatformRecordIdUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PlatformRecordIdUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformRecordIdUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    PlatformRecordIdUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

