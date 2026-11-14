# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form


class ScreenInfo
    attr_accessor :SMALL_WIDTH, :SMALL_HEIGHT, :MEDIUM_WIDTH, :MEDIUM_HEIGHT

    def initialize_fields
        @SMALL_WIDTH = 320
        @SMALL_HEIGHT = 240
        @MEDIUM_WIDTH = 800
        @MEDIUM_HEIGHT = 600
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ScreenInfo.instance
    end

    def self.instance()
        ScreenInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ScreenInfo.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ScreenInfo.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScreenInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ScreenInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

