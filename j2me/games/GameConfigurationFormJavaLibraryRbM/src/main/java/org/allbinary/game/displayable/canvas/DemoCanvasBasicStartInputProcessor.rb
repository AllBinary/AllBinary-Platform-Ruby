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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/NullCanvas"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

class DemoCanvasBasicStartInputProcessor < BasicMenuInputProcessor
    

    def initialize(gameKeyEventList, gameCanvas)
        super(gameKeyEventList, -1, gameCanvas)
    end
    

    # throws Exception
    def processInputList()
        list = self.getGameKeyEventList()
        size = list.size()
        gameKeyEvent = nil
        (0...size).each do |index|
            gameKeyEvent = list.objectArray[index]
            @logUtil.putF(StringMaker.new().append("Start GameKey: ").append(StringUtil.getInstance().toString(gameKeyEvent)).to_s, self, GameInputStrings.getInstance().PROCESS_INPUT)
        end
        self.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas::NULL_CANVAS)
        return size
    end
end

require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"

