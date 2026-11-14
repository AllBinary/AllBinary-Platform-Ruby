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
# package org.allbinary.string

# require "jsinterop/annotations/JsType"

class CommonPhoneStrings
    attr_accessor :UP, :DOWN, :LEFT, :RIGHT, :ZERO, :ONE, :TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :POUND, :STAR, :FIRE

    def initialize_fields
        @UP = "UP"
        @DOWN = "DOWN"
        @LEFT = "LEFT"
        @RIGHT = "RIGHT"
        @ZERO = "0"
        @ONE = "1"
        @TWO = "2"
        @THREE = "3"
        @FOUR = "4"
        @FIVE = "5"
        @SIX = "6"
        @SEVEN = "7"
        @EIGHT = "8"
        @NINE = "9"
        @POUND = "#"
        @STAR = "*"
        @FIRE = "FIRE"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonPhoneStrings.instance
    end

    def self.instance()
        CommonPhoneStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CommonPhoneStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CommonPhoneStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CommonPhoneStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    CommonPhoneStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

