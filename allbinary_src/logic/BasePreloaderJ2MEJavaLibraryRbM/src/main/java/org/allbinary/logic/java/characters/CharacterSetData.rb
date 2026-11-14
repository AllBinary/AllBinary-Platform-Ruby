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
        CharacterSetData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CharacterSetData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CharacterSetData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CharacterSetData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    CharacterSetData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

