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
# package org.allbinary.logic.java.characters


class CharacterSetData
    attr_accessor :US_ASCII, :ISO_8859_1, :UTF_8, :UTF_16, :UTF_16BE, :UTF_16LE

    def initialize_fields
        @US_ASCII = "US-ASCII"
        @ISO_8859_1 = "ISO-8859-1"
        @UTF_8 = "UTF-8"
        @UTF_16 = "UTF-16"
        @UTF_16BE = "UTF-16BE"
        @UTF_16LE = "UTF-16LE"
    end
    

    def self.getInstance()
        return CharacterSetData.instance
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

class CharacterSetData
    @@instance = CharacterSetData.new()
end

