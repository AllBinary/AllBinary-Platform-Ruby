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
# package org.allbinary.input.motion.gesture.configuration


class MotionGestureConfigurationFactory
    

    def initialize()
    end
    

    def self.getInstance()
        return MotionGestureConfigurationFactory.config
    end

    def self.config()
        return defined?(@@config) ? @@config : nil
    end

    def self.config=(value)
        @@config = value
    end
end

require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"

class MotionGestureConfigurationFactory
    @@config = MotionGestureConfiguration.new()
end

