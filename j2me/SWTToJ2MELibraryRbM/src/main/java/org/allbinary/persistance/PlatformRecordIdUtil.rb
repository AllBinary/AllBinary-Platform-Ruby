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


module ::Org; module Allbinary; module Persistance

class PlatformRecordIdUtil
    attr_accessor :PLATFORM_SHORT_NAME

    def jfields_org_allbinary_persistance_PlatformRecordIdUtil
        @PLATFORM_SHORT_NAME = "AVN"
    end

    def initialize
        jfields_org_allbinary_persistance_PlatformRecordIdUtil
    end
    

    def self.getInstance()
        return PlatformRecordIdUtil.instance
    end
    

    def getRecordId(abeClientInformation, baseRecordId)
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(abeClientInformation.toShortString()).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).append(@PLATFORM_SHORT_NAME).append(baseRecordId).to_s
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

module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end

begin
    PlatformRecordIdUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

