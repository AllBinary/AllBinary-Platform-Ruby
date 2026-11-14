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
# package org.allbinary.game.configuration.feature


class TouchFeatureFactory
    attr_accessor :TOUCH_ENABLED, :SHOW_SCREEN_BUTTONS, :AUTO_HIDE_SHOW_SCREEN_BUTTONS, :HIDE_SCREEN_BUTTONS

    def initialize_fields
        @TOUCH_ENABLED = TouchFeature.new("Touch Enabled")
        @SHOW_SCREEN_BUTTONS = TouchFeature.new("Show")
        @AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature.new("Auto Hide (One Level)")
        @HIDE_SCREEN_BUTTONS = TouchFeature.new("Hide")
    end
    

    def self.getInstance()
        return TouchFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        TouchFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TouchFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TouchFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TouchFeature, "org/allbinary/game/configuration/feature/TouchFeature"

begin
    TouchFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

