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

require "java/lang/JavaOverload"
require "org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor"

module ::Org; module Allbinary; module Android; module Input; module Motion; module Api5

class GameInputMotionEventProcessorAPI5 < ::Org::Allbinary::Android::Input::Motion::BaseGameInputMotionEventProcessor
    attr_accessor :logUtil, :displayInfo, :motionRecognizerArray, :TOTAL_MINUS_ONE

    def jfields_org_allbinary_android_input_motion_api5_GameInputMotionEventProcessorAPI5
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @motionRecognizerArray = nil unless instance_variable_defined?(:@motionRecognizerArray)
        @TOTAL_MINUS_ONE = nil unless instance_variable_defined?(:@TOTAL_MINUS_ONE)
    end
    

    def self.getInstance()
        if GameInputMotionEventProcessorAPI5.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            GameInputMotionEventProcessorAPI5.instance = GameInputMotionEventProcessorAPI5.new()
        end
        return GameInputMotionEventProcessorAPI5.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_android_input_motion_api5_GameInputMotionEventProcessorAPI5
        size = GameInputMotionInfoAPI5.getInstance().MAX_POINTERS
        @motionRecognizerArray = Array.new(size, nil)
        @TOTAL_MINUS_ONE = size
        (0...size).each do |index|
            @motionRecognizerArray[index] = ::Org::Allbinary::Input::Motion::AllMotionRecognizer.new()
        end
    end
    

    def isValid(pointerId)
        if pointerId > @TOTAL_MINUS_ONE
            message = "Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: "
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(message + (pointerId).to_s, self)
            return false
        else
            return true
        end
    end
    java_overload :isValid, 1
    

    def process(motionEvent)
        begin
            action = motionEvent.getAction()
            total = @motionRecognizerArray.length
            if total > motionEvent.getPointerCount()
                total = motionEvent.getPointerCount()
            else
                message = "Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): "
                ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(message + (motionEvent.getPointerCount()).to_s, self)
            end
            totalMinusOne = total - 1
            if action == ::Android::View::MotionEvent::ACTION_DOWN
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = ((((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        y = ((((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        @motionRecognizerArray[pointerId].processStartMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            elsif action == ::Android::View::MotionEvent::ACTION_UP || action == ::Android::View::MotionEvent::ACTION_CANCEL
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = ((((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        y = ((((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        @motionRecognizerArray[pointerId].processEndMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            elsif action == ::Android::View::MotionEvent::ACTION_MOVE
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = ((((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        y = ((((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                        @motionRecognizerArray[pointerId].processDraggedMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    java_overload :process, 1

    def self.instance()
        GameInputMotionEventProcessorAPI5.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameInputMotionEventProcessorAPI5.java_static_fields unless @java_static_fields_started
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
        if name == "GameInputMotionEventProcessorAPI5"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :MotionEvent, "android/view/MotionEvent" unless const_defined?(:MotionEvent, false); end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :ScalableListener, "org/allbinary/graphics/displayable/ScalableListener" unless const_defined?(:ScalableListener, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; autoload :AllMotionRecognizer, "org/allbinary/input/motion/AllMotionRecognizer" unless const_defined?(:AllMotionRecognizer, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; autoload :MotionRecognizer, "org/allbinary/input/motion/MotionRecognizer" unless const_defined?(:MotionRecognizer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :GameInputMotionInfoAPI5, "org/allbinary/android/input/motion/api5/GameInputMotionInfoAPI5" unless const_defined?(:GameInputMotionInfoAPI5, false)

begin
    GameInputMotionEventProcessorAPI5.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

