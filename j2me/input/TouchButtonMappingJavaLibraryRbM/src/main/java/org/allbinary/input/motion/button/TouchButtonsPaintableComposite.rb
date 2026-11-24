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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"
require "org/allbinary/graphics/paint/ProcessPaintable"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonsPaintableComposite < ::Org::Allbinary::Graphics::Paint::ProcessPaintable
    include ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventListenerInterface
    attr_accessor :logUtil, :commonStrings, :inputMappingInterface, :touchButtonsPaintable, :timeHelper, :released, :METHOD_NAME, :RELEASE, :FAST_REPEAT, :IGNORE

    def jfields_org_allbinary_input_motion_button_TouchButtonsPaintableComposite
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputMappingInterface = nil unless instance_variable_defined?(:@inputMappingInterface)
        @touchButtonsPaintable = nil unless instance_variable_defined?(:@touchButtonsPaintable)
        @timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(250)
        @released = true
        @METHOD_NAME = "onCompleteMotionGestureInputEvent"
        @RELEASE = "Ignoring: MotionGestureInput Release"
        @FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
        @IGNORE = "Ignoring: Until Released"
    end
    

    def initialize(inputMappingInterface, basicColor)
        super()
        jfields_org_allbinary_input_motion_button_TouchButtonsPaintableComposite
        @inputMappingInterface = inputMappingInterface
        ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(self)
        @touchButtonsPaintable = TouchButtonsMappingPaintable.new(basicColor)
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onCompleteMotionGestureInputEvent")
            touchMotionGestureFactory = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
            gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey()
            motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput()
            if motionGestureInput == touchMotionGestureFactory.RELEASED
                @logUtil.putF(@RELEASE, self, @METHOD_NAME)
                @released = true
                return
            end
            if motionGestureInput == ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION && !@timeHelper.isTimeTNT()
                @logUtil.putF(@FAST_REPEAT, self, @METHOD_NAME)
                return
            end
            if !@released
                @logUtil.putF(@IGNORE, self, @METHOD_NAME)
                return
            end
            @released = false
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("GameKey: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(motionGestureInput)).to_s, self, @METHOD_NAME)
            @inputMappingInterface.processInputMapping(gameKey, motionGestureInput)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_NAME, e)
        end
    end
    java_overload :onCompleteMotionGestureInputEvent, 1
    

    def process()
        ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventHandler.getInstance().removeListener(self)
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEventHandler, "org/allbinary/game/input/CompleteMotionGestureInputEventHandler" unless const_defined?(:CompleteMotionGestureInputEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputMappingInterface, "org/allbinary/game/input/mapping/InputMappingInterface" unless const_defined?(:InputMappingInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" unless const_defined?(:GameKeyCompleteMotionGestureInputEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :TouchButtonsMappingPaintable, "org/allbinary/input/motion/button/TouchButtonsMappingPaintable" unless const_defined?(:TouchButtonsMappingPaintable, false)

end; end; end; end; end

