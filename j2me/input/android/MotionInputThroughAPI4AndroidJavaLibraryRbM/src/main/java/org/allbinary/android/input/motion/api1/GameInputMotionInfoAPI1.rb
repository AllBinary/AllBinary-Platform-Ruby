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
# package org.allbinary.android.input.motion.api1

require "org/allbinary/android/input/motion/GameInputMotionInfo"

class GameInputMotionInfoAPI1 < GameInputMotionInfo
    

    def self.getInstance()
        return GameInputMotionInfoAPI1.instance
    end
    

    def initialize()
        super(4, 1)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameInputMotionInfoAPI1
    @@instance = GameInputMotionInfoAPI1.new()
end

