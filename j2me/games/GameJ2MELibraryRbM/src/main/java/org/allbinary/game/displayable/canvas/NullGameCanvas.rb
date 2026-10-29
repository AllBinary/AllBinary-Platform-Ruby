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

require "java/lang/Object"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/NullCommandListener"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class NullGameCanvas < AllBinaryGameCanvas
    attr_accessor :runningNull

    def initialize_fields
        @runningNull = true
    end
    

    def self.createNull()
        begin
            return NullGameCanvas.new(AllBinaryGameLayerManager.getNullInstance())
        rescue StandardError => e
            LogUtil.getInstance().put(CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().GET_INSTANCE, e)
            raise RuntimeError.new()
        end
    end
    

    def self.getInstance()
        if NullGameCanvas.instance == NullUtil.getInstance().NULL_OBJECT
            NullGameCanvas.instance = NullGameCanvas.createNull()
        end
        return NullGameCanvas.instance
    end
    

    # throws Exception
    def self.createCanvas(gameLayerManager)
        nullGameCanvas = NullGameCanvas.new(gameLayerManager)
        nullGameCanvas.setInitialized(true)
        nullGameCanvas.setTitle(NullGameCanvas::NO_GAME)
        return nullGameCanvas
    end
    

    def initialize(gameLayerManager)
        super(NullCommandListener::NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        initialize_fields
        self.class.superclass.instance_method(:setWait).bind(self).call(1200)
    end
    

    def isGameOver()
        java_monitor.synchronize do
        return false
        end
    end
    

    def setRunning(running)
        @runningNull = running
    end
    

    def isRunning()
        java_monitor.synchronize do
        return @runningNull
        end
    end
    

    def pause()
        java_monitor.synchronize do
        self.setPaused(true)
        end
    end
    

    def unPause()
        java_monitor.synchronize do
        self.setPaused(false)
        end
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def buildGameInit(isProgress)
    end
    

    def draw(graphics)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    

    def getType()
        return NullGameCanvas::TYPE
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/init/BasicBuildGameInitializerFactory"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/score/NoHighScoresFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class NullGameCanvas
    @@instance = NullUtil.getInstance().NULL_OBJECT
    NO_GAME = "No Background Game"
    TYPE = 1
end

