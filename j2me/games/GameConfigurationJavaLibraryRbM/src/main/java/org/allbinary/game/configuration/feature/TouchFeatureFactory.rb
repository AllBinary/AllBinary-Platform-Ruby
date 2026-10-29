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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/TouchFeature"

class TouchFeatureFactory
    @@instance = TouchFeatureFactory.new()
end

