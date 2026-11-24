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
# package org.allbinary.game.score.displayable

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"
require "org/allbinary/game/score/HighScoresResultsListener"

module ::Org; module Allbinary; module Game; module Score; module Displayable

class HighScoresCanvas < ::Org::Allbinary::Game::Displayable::Canvas::GameCommandCanvas
    include ::Org::Allbinary::Game::Score::HighScoresResultsListener
    attr_accessor :paintable, :highScoreCommandsFactory, :waitPaintable, :highScoresPaintable, :highScoresFactoryInterface, :colorFillPaintable, :highScoresHelper, :gameInfo, :highScoresCanvasInputProcessor, :currentCommand, :hasPainted

    def jfields_org_allbinary_game_score_displayable_HighScoresCanvas
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @highScoreCommandsFactory = ::Org::Allbinary::Game::Score::HighScoreCommandsFactory.getInstance()
        @waitPaintable = ::Org::Allbinary::Graphics::Paint::SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT_FOR_SERVER, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        @highScoresPaintable = nil unless instance_variable_defined?(:@highScoresPaintable)
        @highScoresFactoryInterface = nil unless instance_variable_defined?(:@highScoresFactoryInterface)
        @colorFillPaintable = nil unless instance_variable_defined?(:@colorFillPaintable)
        @highScoresHelper = ::Org::Allbinary::Game::Score::HighScoresHelperBase.new()
        @gameInfo = nil unless instance_variable_defined?(:@gameInfo)
        @highScoresCanvasInputProcessor = nil unless instance_variable_defined?(:@highScoresCanvasInputProcessor)
        @currentCommand = @highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]
        @hasPainted = false
    end
    

    def initialize(commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)
        super(commandListener, HighScoresCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        jfields_org_allbinary_game_score_displayable_HighScoresCanvas
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @highScoresPaintable = paintable
        @highScoresFactoryInterface = highScoresFactoryInterface
        @highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance(self)
        @gameInfo = gameInfo
        @waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        self.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        @colorFillPaintable = ::Org::Allbinary::Game::Paint::ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
        if @highScoresHelper.getHighScoresArray().length == ::Org::Allbinary::Game::Score::NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length
            self.setPaintable(@waitPaintable)
        else
            @logUtil.putF("Show HighScores that are already loaded", self, @commonStrings.CONSTRUCTOR)
            self.updateCommand(@currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        end
        ::Org::Allbinary::ThreadPackage::SecondaryThreadPool.getInstance().runTask(HighScoreRunnable.new(self))
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def open()
        HighScoresCanvas.superclass.java_super_method(:open, 0).bind(self).call()
        @highScoresCanvasInputProcessor.open()
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        HighScoresCanvas.superclass.java_super_method(:close, 0).bind(self).call()
        @highScoresCanvasInputProcessor.close()
    end
    java_overload :close, 0
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        @paintable.paint(graphics)
        if @waitPaintable != @paintable
            @highScoresCanvasInputProcessor.paint(graphics)
        end
        HighScoresCanvas.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @hasPainted = true
    end
    java_overload :paint, 1
    

    def executeUpdate()
        begin
            @highScoresFactoryInterface.fetchHighScores(self.getGameInfo(), self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end
    java_overload :executeUpdate, 0
    

    def getHighScoresPaintable()
        return @highScoresPaintable
    end
    java_overload :getHighScoresPaintable, 0
    

    def setHighScoresArray(highScoresArray)
        begin
            if highScoresArray != nil
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).appendint(highScoresArray.length).to_s, self, "setHighScoresArray")
            else
                @logUtil.putF(@commonStrings.START, self, "setHighScoresArray")
            end
            @highScoresHelper.setHighScoresArray(highScoresArray)
            self.updateCommand(@currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end
    java_overload :setHighScoresArray, 1
    

    # throws Exception
    def updateCommand(command)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(@stringUtil.toString(command)).to_s, self, @commonStrings.UPDATE)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        if @highScoreCommandsFactory.isHighScoreCommand(command)
            index = @highScoreCommandsFactory.getIndex(command)
            nextIndex = index + 1
            highScoresArray = @highScoresHelper.getHighScoresArray()
            if nextIndex >= highScoresArray.length
                nextIndex = 0
            end
            if highScoresArray.length > 0
                self.getHighScoresPaintable().setHighScores(highScoresArray[index])
            else
                self.getHighScoresPaintable().setHighScores(::Org::Allbinary::Game::Score::NullHighScoresSingletonFactory.getInstance())
            end
            if index != nextIndex
                self.removeAllCommands()
                self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                self.addCommand(@highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex])
            end
        end
        @currentCommand = command
        self.close()
        HighScoresCanvas.superclass.java_super_method(:initMenu, 0).bind(self).call()
        self.open()
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :updateCommand, 1
    

    def getGameInfo()
        return @gameInfo
    end
    java_overload :getGameInfo, 0
    

    def setPaintable(paintable)
        @paintable = paintable
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :setPaintable, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "HighScoresCanvas")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HighScoresCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory" unless const_defined?(:ColorFillPaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoreCommandsFactory, "org/allbinary/game/score/HighScoreCommandsFactory" unless const_defined?(:HighScoreCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresCanvasInputProcessor, "org/allbinary/game/score/HighScoresCanvasInputProcessor" unless const_defined?(:HighScoresCanvasInputProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresCanvasInputProcessorFactoryInterface, "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface" unless const_defined?(:HighScoresCanvasInputProcessorFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelperBase, "org/allbinary/game/score/HighScoresHelperBase" unless const_defined?(:HighScoresHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresPaintable, "org/allbinary/game/score/HighScoresPaintable" unless const_defined?(:HighScoresPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NoHighScoresFactory, "org/allbinary/game/score/NoHighScoresFactory" unless const_defined?(:NoHighScoresFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :SimpleTextPaintable, "org/allbinary/graphics/paint/SimpleTextPaintable" unless const_defined?(:SimpleTextPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SecondaryThreadPool, "org/allbinary/thread/SecondaryThreadPool" unless const_defined?(:SecondaryThreadPool, false); end; end; end
autoload :HighScoreRunnable, "org/allbinary/game/score/displayable/HighScoreRunnable" unless const_defined?(:HighScoreRunnable, false)

begin
    HighScoresCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

