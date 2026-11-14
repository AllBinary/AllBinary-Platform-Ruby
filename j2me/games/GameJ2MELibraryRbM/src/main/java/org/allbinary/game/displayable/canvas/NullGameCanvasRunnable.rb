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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_CANVAS_RUNNABLE, NullGameCanvasRunnable.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullGameCanvasRunnable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GAME_CANVAS_RUNNABLE].include?(name)
        end
        super
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :GameState, "org/allbinary/game/state/GameState"
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
require "java/lang/Thread"

begin
    NullGameCanvasRunnable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

