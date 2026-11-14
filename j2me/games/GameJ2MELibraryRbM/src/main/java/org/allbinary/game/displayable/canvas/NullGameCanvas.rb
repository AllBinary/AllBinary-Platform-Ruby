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
        NullGameCanvas.superclass.instance_method(:setWait).bind(self).call(1200)
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
        NullGameCanvas.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NullGameCanvas.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NO_GAME, "No Background Game")
        const_set(:TYPE, 1)
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullGameCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NO_GAME, :TYPE].include?(name)
        end
        super
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener"
autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :NoHighScoresFactory, "org/allbinary/game/score/NoHighScoresFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    NullGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

