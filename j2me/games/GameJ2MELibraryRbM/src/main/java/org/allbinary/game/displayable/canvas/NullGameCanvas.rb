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
require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class NullGameCanvas < AllBinaryGameCanvas
    attr_accessor :runningNull

    def jfields_org_allbinary_game_displayable_canvas_NullGameCanvas
        @runningNull = true
    end
    

    def self.createNull()
        begin
            return NullGameCanvas.new(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance())
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance().put(::Org::Allbinary::StringPackage::CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", ::Org::Allbinary::StringPackage::CommonStrings.getInstance().GET_INSTANCE, e)
            raise RuntimeError.new()
        end
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = NullGameCanvas.createNull()
        end
        return @@instance
    end
    

    # throws Exception
    def self.createCanvas(gameLayerManager)
        nullGameCanvas = NullGameCanvas.new(gameLayerManager)
        nullGameCanvas.setInitialized(true)
        nullGameCanvas.setTitle(NullGameCanvas::NO_GAME)
        return nullGameCanvas
    end
    

    def initialize(gameLayerManager)
        super(::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER, gameLayerManager, ::Org::Allbinary::Game::Score::NoHighScoresFactory.getInstance(), ::Org::Allbinary::Game::Init::BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        jfields_org_allbinary_game_displayable_canvas_NullGameCanvas
        NullGameCanvas.superclass.java_super_method(:setWait, 1).bind(self).call(1200)
    end
    

    def isGameOver()
        java_monitor.synchronize do
        return false
        end
    end
    java_overload :isGameOver, 0
    

    def setRunning(running)
        @runningNull = running
    end
    java_overload :setRunning, 1
    

    def isRunning()
        java_monitor.synchronize do
        return @runningNull
        end
    end
    java_overload :isRunning, 0
    

    def pause()
        java_monitor.synchronize do
        self.setPaused(true)
        end
    end
    java_overload :pause, 0
    

    def unPause()
        java_monitor.synchronize do
        self.setPaused(false)
        end
    end
    java_overload :unPause, 0
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def buildGameInit(isProgress)
    end
    java_overload :buildGameInit, 1
    

    def draw(graphics)
    end
    java_overload :draw, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
    

    def getType()
        return NullGameCanvas::TYPE
    end
    java_overload :getType, 0

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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory" unless const_defined?(:BasicBuildGameInitializerFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NoHighScoresFactory, "org/allbinary/game/score/NoHighScoresFactory" unless const_defined?(:NoHighScoresFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    NullGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

