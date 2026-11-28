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
# package org.allbinary.business.entry


module ::Org; module Allbinary; module Business; module Entry

class EntryData
    attr_accessor :ID, :ENCRYPTION, :TIMECREATED, :LASTMODIFIED, :DEFAULT, :SPECIAL, :ENABLE, :YES, :NO

    def jfields_org_allbinary_business_entry_EntryData
        @ID = "ENTRY_ID"
        @ENCRYPTION = "ENTRY_ENCRYPTION"
        @TIMECREATED = "ENTRY_TIMECREATED"
        @LASTMODIFIED = "ENTRY_LASTMODIFIED"
        @DEFAULT = "ENTRY_DEFAULT"
        @SPECIAL = "ENTRY_SPECIAL"
        @ENABLE = "ENTRY_ENABLE"
        @YES = "Yes"
        @NO = "No"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_entry_EntryData
    end

    def self.instance()
        EntryData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EntryData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EntryData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EntryData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    EntryData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

