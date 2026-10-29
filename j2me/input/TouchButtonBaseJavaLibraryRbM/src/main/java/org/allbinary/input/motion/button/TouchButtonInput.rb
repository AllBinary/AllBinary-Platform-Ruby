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

require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/input/Input"

class TouchButtonInput < Input
    include GameKeyEventSourceInterface
    attr_accessor :logUtil, :gameKeyEventFactory, :TOUCH_BUTTON_SOURCE_ID, :gameKeyEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @TOUCH_BUTTON_SOURCE_ID = @gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
        @gameKeyEvent = GameKeyEvent::NONE
    end
    

    def initialize(id, name)
        super(id, name)
        initialize_fields
        inputFactory = InputFactory.getInstance()
        inputFactory.add(self.getId(), self)
    end
    

    def update(inputToGameKeyMapping)
        begin
            gameKey = inputToGameKeyMapping.getInstance(self.getId())
            @gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
    end
    

    def getSourceId()
        return @TOUCH_BUTTON_SOURCE_ID
    end
    

    def getGameKeyEvent()
        return @gameKeyEvent
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

