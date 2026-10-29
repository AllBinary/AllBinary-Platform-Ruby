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
# package org.allbinary.android.input.motion


class GameInputMotionEventProcessorFactory
    

    def self.getInstance()
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 4
            return GameInputMotionEventProcessorAPI1.getInstance()
        else
            return GameInputMotionEventProcessorAPI5.getInstance()
        end
    end
end

require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/android/input/motion/api1/GameInputMotionEventProcessorAPI1"
require "org/allbinary/android/input/motion/api5/GameInputMotionEventProcessorAPI5"
require "org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor"

