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
# package org.allbinary.graphics


class ItemColorFactory
    attr_accessor :INVERT_PAINT, :PAINT, :TEXT_FIELD_NO_FOCUS

    def initialize_fields
        @INVERT_PAINT = 0xFF000000
        @PAINT = 0xFFe07718
        @TEXT_FIELD_NO_FOCUS = 0x7F7F7F
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ItemColorFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ItemColorFactory
    @@instance = ItemColorFactory.new()
end

