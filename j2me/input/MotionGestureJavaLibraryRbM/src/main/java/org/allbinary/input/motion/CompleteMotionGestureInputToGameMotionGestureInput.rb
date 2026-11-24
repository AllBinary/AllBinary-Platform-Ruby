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
# package org.allbinary.input.motion


module ::Org; module Allbinary; module Input; module Motion

class CompleteMotionGestureInputToGameMotionGestureInput
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_CompleteMotionGestureInputToGameMotionGestureInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_input_motion_CompleteMotionGestureInputToGameMotionGestureInput
    end
    

    def self.getInstance()
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    end
    

    def init()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Compound Motion Gestures", self, commonStrings.INIT)
            motionGestureConfiguration = ::Org::Allbinary::Input::Motion::Gesture::Configuration::MotionGestureConfigurationFactory.getInstance()
            touchMotionGestureFactory = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::LeftTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::RightTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DOWN)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::DownTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.UP)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::UpTouchInputToGameKeyEventAction.getInstance())
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RELEASED)
            motionGestureConfiguration.addMotionGestureAction(list, ::Org::Allbinary::Input::Motion::Touch::Action::ReleaseTouchInputToGameKeyEventAction.getInstance())
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end

    def self.instance()
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CompleteMotionGestureInputToGameMotionGestureInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfiguration, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" unless const_defined?(:MotionGestureConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfigurationFactory, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" unless const_defined?(:MotionGestureConfigurationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :DiagonalDownLeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction" unless const_defined?(:DiagonalDownLeftTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :DiagonalDownRightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction" unless const_defined?(:DiagonalDownRightTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :DiagonalUpLeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction" unless const_defined?(:DiagonalUpLeftTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :DiagonalUpRightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction" unless const_defined?(:DiagonalUpRightTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :DownTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction" unless const_defined?(:DownTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :LeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction" unless const_defined?(:LeftTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :ReleaseTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction" unless const_defined?(:ReleaseTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :RightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction" unless const_defined?(:RightTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Touch; module Action; autoload :UpTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction" unless const_defined?(:UpTouchInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

