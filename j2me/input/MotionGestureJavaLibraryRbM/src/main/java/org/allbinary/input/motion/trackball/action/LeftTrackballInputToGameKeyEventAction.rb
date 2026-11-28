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
# package org.allbinary.input.motion.trackball.action

require "java/lang/JavaOverload"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

module ::Org; module Allbinary; module Input; module Motion; module Trackball; module Action

class LeftTrackballInputToGameKeyEventAction < ::Org::Allbinary::Game::Input::Motion::Action::GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = LeftTrackballInputToGameKeyEventAction.new()
        end
        return @@instance
    end
    

    def initialize()
        super("Left Action", ::Org::Allbinary::Input::Motion::Gesture::TrackballMotionGestureFactory.getInstance().LEFT, ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        LeftTrackballInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LeftTrackballInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
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
        if name == "LeftTrackballInputToGameKeyEventAction"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TrackballMotionGestureFactory, "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory" unless const_defined?(:TrackballMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    LeftTrackballInputToGameKeyEventAction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

