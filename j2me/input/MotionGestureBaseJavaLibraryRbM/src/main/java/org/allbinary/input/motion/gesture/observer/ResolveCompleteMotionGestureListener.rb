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

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class ResolveCompleteMotionGestureListener
    include CompleteMotionGestureListenerInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_gesture_observer_ResolveCompleteMotionGestureListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_observer_ResolveCompleteMotionGestureListener
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", self, commonStrings.CONSTRUCTOR)
        ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventHandler.getInstance().addListener(::Org::Allbinary::Game::Input::Motion::Action::GameKeyFromMotionGestureEventListener.new())
    end
    

    # throws Exception
    def onMotionGestureCompleted(list)
        configuration = ::Org::Allbinary::Input::Motion::Gesture::Configuration::MotionGestureConfigurationFactory.getInstance()
        commandActionsList = configuration.getAssociateCommandActionsList()
        size = commandActionsList.size()
        (size - 1).step(0, -(1)) do |index|
            association = commandActionsList.objectArray[index]
            if association.isMotionGestureArrayEquals(list) == true
                completeMotionGestureInputEvent = association.getCommandAction()
                ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent)
                break
            end
        end
    end
    java_overload :onMotionGestureCompleted, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEventHandler, "org/allbinary/game/input/CompleteMotionGestureInputEventHandler" unless const_defined?(:CompleteMotionGestureInputEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" unless const_defined?(:GameKeyCompleteMotionGestureInputEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :GameKeyFromMotionGestureEventListener, "org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener" unless const_defined?(:GameKeyFromMotionGestureEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureToMotionGestureActionAssociation, "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation" unless const_defined?(:MotionGestureToMotionGestureActionAssociation, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfiguration, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" unless const_defined?(:MotionGestureConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfigurationFactory, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" unless const_defined?(:MotionGestureConfigurationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

