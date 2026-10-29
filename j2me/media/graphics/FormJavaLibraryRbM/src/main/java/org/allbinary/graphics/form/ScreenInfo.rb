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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ScreenInfo
    @@instance = ScreenInfo.new()
end

