# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

class NullPlayerGameInputComposite
    include PlayerGameInputCompositeInterface
    

    def getName()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def processInput(layerManager)
    end
    

    def initInputProcessors()
    end
    

    def getPlayerGameInput()
        return NoPlayerGameInput.getInstance()
    end
end

require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/input/NoPlayerGameInput"
require "org/allbinary/game/input/PlayerGameInput"

class NullPlayerGameInputComposite
    NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite.new()
end

