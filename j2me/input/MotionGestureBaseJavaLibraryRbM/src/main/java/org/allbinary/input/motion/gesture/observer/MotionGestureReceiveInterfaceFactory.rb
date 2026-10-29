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
# package org.allbinary.input.motion.gesture.observer


class MotionGestureReceiveInterfaceFactory
    

    def self.getInstance()
        configuration = MotionGestureConfigurationFactory.getInstance()
        if !configuration.isExecutingActionsAllowed()
            return NullCompleteMotionGestureReceiver.new()
        else
            return ResolveCompleteMotionGestureListener.new()
        end
    end
end

require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory"
require "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"
require "org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver"
require "org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener"

