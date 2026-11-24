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

require "java/lang/JavaOverload"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action

class ReleaseTouchInputToGameKeyEventAction < ::Org::Allbinary::Game::Input::Motion::Action::GameKeyCompleteMotionGestureInputEvent
    attr_accessor :NONE

    def jfields_org_allbinary_input_motion_touch_action_ReleaseTouchInputToGameKeyEventAction
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
    end
    

    def self.getInstance()
        if ReleaseTouchInputToGameKeyEventAction.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            ReleaseTouchInputToGameKeyEventAction.instance = ReleaseTouchInputToGameKeyEventAction.new()
        end
        return ReleaseTouchInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Release Action", ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().RELEASED, ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
        jfields_org_allbinary_input_motion_touch_action_ReleaseTouchInputToGameKeyEventAction
        begin
            self.setGameKey(@NONE)
            self.setGameKeyEvent(::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @NONE))
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def update()
    end
    java_overload :update, 0

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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ReleaseTouchInputToGameKeyEventAction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

