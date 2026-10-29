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

require "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"

class ResolveCompleteMotionGestureListener
    include CompleteMotionGestureListenerInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", self, commonStrings.CONSTRUCTOR)
        CompleteMotionGestureInputEventHandler.getInstance().addListener(GameKeyFromMotionGestureEventListener.new())
    end
    

    # throws Exception
    def onMotionGestureCompleted(list)
        configuration = MotionGestureConfigurationFactory.getInstance()
        commandActionsList = configuration.getAssociateCommandActionsList()
        size = commandActionsList.size()
        (size - 1).step(0, -(1)) do |index|
            association = commandActionsList.objectArray[index]
            if association.isMotionGestureArrayEquals(list) == true
                completeMotionGestureInputEvent = association.getCommandAction()
                CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent)
                break
            end
        end
    end
end

require "org/allbinary/game/input/CompleteMotionGestureInputEventHandler"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"
require "org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener"
require "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

