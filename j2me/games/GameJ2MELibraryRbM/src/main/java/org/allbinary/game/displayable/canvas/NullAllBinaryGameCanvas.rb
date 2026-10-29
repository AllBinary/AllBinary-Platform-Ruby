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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"

class NullAllBinaryGameCanvas
    include AllBinaryGameCanvasInterface
    

    def getLayerManager()
        raise RuntimeError.new()
    end
    

    def addCommand(cmd)
        raise RuntimeError.new()
    end
    

    def getHeight()
        raise RuntimeError.new()
    end
    

    def getWidth()
        raise RuntimeError.new()
    end
    

    def removeCommand(cmd)
        raise RuntimeError.new()
    end
    

    def setCommandListener(l)
        raise RuntimeError.new()
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"

class NullAllBinaryGameCanvas
    NULL_ALLBINARY_GAME_CANVAS = NullAllBinaryGameCanvas.new()
end

