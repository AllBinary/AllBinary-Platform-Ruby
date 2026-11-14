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
        ReleaseTouchInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ReleaseTouchInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ReleaseTouchInputToGameKeyEventAction"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameKey, "org/allbinary/game/input/GameKey"
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory"
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    ReleaseTouchInputToGameKeyEventAction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

