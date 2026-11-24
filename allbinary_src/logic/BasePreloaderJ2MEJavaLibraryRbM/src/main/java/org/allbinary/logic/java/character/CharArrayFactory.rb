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
# package org.allbinary.logic.java.character


module ::Org; module Allbinary; module Logic; module Java; module Character

class CharArrayFactory
    attr_accessor :zeroCharArray

    def jfields_org_allbinary_logic_java_character_CharArrayFactory
        @zeroCharArray = (Array.new(0, "\0")).tap { |java_array| java_array.instance_variable_set(:@java_component, :C) }
    end

    def initialize
        jfields_org_allbinary_logic_java_character_CharArrayFactory
    end
    

    def self.getInstance()
        return CharArrayFactory.instance
    end
    

    def getZeroCharArray()
        return @zeroCharArray
    end

    def self.instance()
        CharArrayFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CharArrayFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CharArrayFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CharArrayFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    CharArrayFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

