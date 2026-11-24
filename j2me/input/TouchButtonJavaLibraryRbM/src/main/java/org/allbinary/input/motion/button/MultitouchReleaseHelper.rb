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
require "org/allbinary/input/motion/button/ReleaseHelper"

module ::Org; module Allbinary; module Input; module Motion; module Button

class MultitouchReleaseHelper < ReleaseHelper
    

    def initialize(touchButtonRecognizer)
        super(touchButtonRecognizer)
    end
    

    # throws Exception
    def release(touchButtonInput, deviceId)
        cancelTouchButtonInput = CancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput)
        nextTouchButtonInput = nil
        gameKeyEvent = nil
        (@touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1).step(0, -(1)) do |index|
            nextTouchButtonInput = @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
            if cancelTouchButtonInput == nextTouchButtonInput
                gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                @touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
            end
        end
    end
    java_overload :release, 2
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
autoload :CancelTouchButtonInputFactory, "org/allbinary/input/motion/button/CancelTouchButtonInputFactory" unless const_defined?(:CancelTouchButtonInputFactory, false)
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)
autoload :TouchButtonRecognizer, "org/allbinary/input/motion/button/TouchButtonRecognizer" unless const_defined?(:TouchButtonRecognizer, false)

end; end; end; end; end

