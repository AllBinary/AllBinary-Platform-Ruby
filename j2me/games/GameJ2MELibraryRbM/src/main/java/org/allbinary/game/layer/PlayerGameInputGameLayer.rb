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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayer"

class PlayerGameInputGameLayer < AllBinaryGameLayer
    include PlayerGameInputCompositeInterface
    attr_accessor :playerGameInput

    def initialize_fields
        @playerGameInput = nil
    end
    

    def initialize(playerInputId)
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), StaticViewPosition.new(0, 0, 0))
        initialize_fields
        @playerGameInput = PlayerGameInput.new(self.getGameKeyEventList(), BasicArrayListD.new(), playerInputId)
        canvasStrings = CanvasStrings.getInstance()
        @logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", self, canvasStrings.PAINT)
    end
    

    def getPlayerGameInput()
        return @playerGameInput
    end
    

    def initInputProcessors()
    end
    

    # throws Exception
    def processInput(myManager)
    end
    

    def paint(graphics)
    end
end

require "org/allbinary/game/input/PlayerGameInput"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/view/StaticViewPosition"

