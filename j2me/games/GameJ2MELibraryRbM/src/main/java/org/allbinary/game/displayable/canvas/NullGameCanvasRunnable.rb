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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class NullGameCanvasRunnable
    include GameCanvasRunnableInterface
    attr_accessor :gameStateFactory

    def jfields_org_allbinary_game_displayable_canvas_NullGameCanvasRunnable
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_displayable_canvas_NullGameCanvasRunnable
    end
    

    def getTitle()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getTitle, 0
    

    def isInitialized()
        return false
    end
    java_overload :isInitialized, 0
    

    def isPaused()
        return false
    end
    java_overload :isPaused, 0
    

    def unPause()
    end
    java_overload :unPause, 0
    

    def pause()
    end
    java_overload :pause, 0
    

    def isHighScoreSubmitted()
        return false
    end
    java_overload :isHighScoreSubmitted, 0
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
    end
    java_overload :setHighScoreSubmitted, 1
    

    # throws Exception
    def processGameOver()
    end
    java_overload :processGameOver, 0
    

    def isGameOver()
        return false
    end
    java_overload :isGameOver, 0
    

    def initCommands(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def getCurrentStateHashtable()
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :getCurrentStateHashtable, 0
    

    # throws Exception
    def getLoadStateHashtable()
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :getLoadStateHashtable, 0
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
    end
    java_overload :setLoadStateHashtable, 1
    

    def getType()
        return -1
    end
    java_overload :getType, 0
    

    # throws Exception
    def setGameState(gameState)
    end
    java_overload :setGameState, 1
    

    def getGameState()
        return @gameStateFactory.NO_GAME_STATE
    end
    java_overload :getGameState, 0
    

    def itemStateChanged(item)
    end
    java_overload :itemStateChanged, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def isRunning()
        return false
    end
    java_overload :isRunning, 0
    

    def setRunning(isRunning)
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

    def run()
    end
    java_overload :run, 0

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

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
require "java/lang/Thread"

begin
    NullGameCanvasRunnable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

