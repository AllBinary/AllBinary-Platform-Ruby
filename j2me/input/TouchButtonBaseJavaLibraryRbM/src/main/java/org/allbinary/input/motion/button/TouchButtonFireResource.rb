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
# package org.allbinary.input.motion.button

require "org/allbinary/input/motion/button/TouchButtonResource"

class TouchButtonFireResource < TouchButtonResource
    

    def self.getInstance()
        return TouchButtonFireResource.instance
    end
    

    def initialize()
        super("/touch_button_fire_64_by_64.png", "/touch_button_fire_hint_64_by_64.png")
    end

    def self.instance()
        TouchButtonFireResource.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TouchButtonFireResource.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TouchButtonFireResource.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchButtonFireResource"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    TouchButtonFireResource.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

