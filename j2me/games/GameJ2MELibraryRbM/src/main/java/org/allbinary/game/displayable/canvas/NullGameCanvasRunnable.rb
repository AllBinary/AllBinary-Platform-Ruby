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

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Item"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"

class NullGameCanvasRunnable
    include GameCanvasRunnableInterface
    attr_accessor :gameStateFactory

    def initialize_fields
        @gameStateFactory = GameStateFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def getTitle()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def isInitialized()
        return false
    end
    

    def isPaused()
        return false
    end
    

    def unPause()
    end
    

    def pause()
    end
    

    def isHighScoreSubmitted()
        return false
    end
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
    end
    

    # throws Exception
    def processGameOver()
    end
    

    def isGameOver()
        return false
    end
    

    def initCommands(cmdListener)
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        return StdUtil.getInstance().NULL_TABLE
    end
    

    # throws Exception
    def getLoadStateHashtable()
        return StdUtil.getInstance().NULL_TABLE
    end
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
    end
    

    def getType()
        return -1
    end
    

    # throws Exception
    def setGameState(gameState)
    end
    

    def getGameState()
        return @gameStateFactory.NO_GAME_STATE
    end
    

    def itemStateChanged(item)
    end
    

    def paint(graphics)
    end
    

    def paintThreed(graphics)
    end
    

    def isRunning()
        return false
    end
    

    def setRunning(isRunning)
    end
    

    # throws Exception
    def setThread(thread)
    end
    

    def run()
    end
end

require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/ABHashtable"
require "java/lang/Thread"

class NullGameCanvasRunnable
    NULL_GAME_CANVAS_RUNNABLE = NullGameCanvasRunnable.new()
end

