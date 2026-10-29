# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class TouchScreenTypesFactory
    attr_accessor :FINGER, :NOTOUCH, :STYLUS, :UNDEFINED

    def initialize_fields
        @FINGER = TouchScreenType.new("Finger")
        @NOTOUCH = TouchScreenType.new("No Touch")
        @STYLUS = TouchScreenType.new("Stylus")
        @UNDEFINED = TouchScreenType.new("Undefined")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TouchScreenTypesFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/input/motion/button/TouchScreenType"

class TouchScreenTypesFactory
    @@instance = TouchScreenTypesFactory.new()
end

