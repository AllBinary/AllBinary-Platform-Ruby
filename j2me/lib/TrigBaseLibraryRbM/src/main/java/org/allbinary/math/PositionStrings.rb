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
# package org.allbinary.math

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class PositionStrings
    attr_accessor :X, :Y, :X_LABEL, :Y_LABEL, :Z_LABEL, :DX_LABEL, :DY_LABEL, :DZ_LABEL

    def initialize_fields
        @X = "x"
        @Y = "y"
        @X_LABEL = "x: "
        @Y_LABEL = "y: "
        @Z_LABEL = "z: "
        @DX_LABEL = "dx: "
        @DY_LABEL = "dy: "
        @DZ_LABEL = "dz: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PositionStrings.instance
    end

    def self.instance()
        PositionStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PositionStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PositionStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PositionStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    PositionStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

