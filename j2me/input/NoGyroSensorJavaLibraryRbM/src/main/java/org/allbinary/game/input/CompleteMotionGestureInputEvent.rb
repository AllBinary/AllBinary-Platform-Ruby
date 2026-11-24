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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/input/CompleteMotionGestureInputInterface"

module ::Org; module Allbinary; module Game; module Input

class CompleteMotionGestureInputEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    include CompleteMotionGestureInputInterface
    attr_accessor :logUtil, :name, :motionGestureInput

    def jfields_org_allbinary_game_input_CompleteMotionGestureInputEvent
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @motionGestureInput = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION
    end
    

    def initialize(name, motionGestureInput)
        super(motionGestureInput)
        jfields_org_allbinary_game_input_CompleteMotionGestureInputEvent
        self.setName(name)
        begin
            self.setMotionGestureInput(motionGestureInput)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "InputToGameKeyEventAction", e)
        end
    end
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setMotionGestureInput(motionGestureInput)
        @motionGestureInput = motionGestureInput
    end
    java_overload :setMotionGestureInput, 1
    

    def getMotionGestureInput()
        return @motionGestureInput
    end
    java_overload :getMotionGestureInput, 0
end

module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

