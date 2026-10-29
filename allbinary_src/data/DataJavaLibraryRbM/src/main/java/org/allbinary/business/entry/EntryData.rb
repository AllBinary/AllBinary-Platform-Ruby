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


class EntryData
    attr_accessor :ID, :ENCRYPTION, :TIMECREATED, :LASTMODIFIED, :DEFAULT, :SPECIAL, :ENABLE, :YES, :NO

    def initialize_fields
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
        return EntryData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class EntryData
    @@instance = EntryData.new()
end

