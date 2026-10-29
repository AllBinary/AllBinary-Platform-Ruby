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
# package org.allbinary.input.motion.touch.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class ReleaseTouchInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    attr_accessor :NONE

    def initialize_fields
        @NONE = GameKeyFactory.getInstance().NONE
    end
    

    def self.getInstance()
        if ReleaseTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            ReleaseTouchInputToGameKeyEventAction.instance = ReleaseTouchInputToGameKeyEventAction.new()
        end
        return ReleaseTouchInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
        initialize_fields
        begin
            self.setGameKey(@NONE)
            self.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(self, @NONE))
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def update()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/string/CommonStrings"

class ReleaseTouchInputToGameKeyEventAction
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

