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


module ::Org; module Allbinary; module Input; module Motion; module Button

class ReleaseHelper
    attr_accessor :touchButtonRecognizer

    def jfields_org_allbinary_input_motion_button_ReleaseHelper
        @touchButtonRecognizer = nil unless instance_variable_defined?(:@touchButtonRecognizer)
    end
    

    def initialize(touchButtonRecognizer)
        jfields_org_allbinary_input_motion_button_ReleaseHelper
        @touchButtonRecognizer = touchButtonRecognizer
    end
    

    # throws Exception
    def release(touchButtonInput, deviceId)
        nextTouchButtonInput = nil
        gameKeyEvent = nil
        (@touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1).step(0, -(1)) do |index|
            nextTouchButtonInput = @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
            gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
            @touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
            @touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
        end
    end
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)
autoload :TouchButtonRecognizer, "org/allbinary/input/motion/button/TouchButtonRecognizer" unless const_defined?(:TouchButtonRecognizer, false)

end; end; end; end; end

