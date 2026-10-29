#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion.api5

require "org/allbinary/android/input/motion/GameInputMotionInfo"

class GameInputMotionInfoAPI5 < GameInputMotionInfo
    

    def self.getInstance()
        return GameInputMotionInfoAPI5.instance
    end
    

    def initialize()
        super(2147483647, 10)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameInputMotionInfoAPI5
    @@instance = GameInputMotionInfoAPI5.new()
end

