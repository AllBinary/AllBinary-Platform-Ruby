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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"
require "org/allbinary/game/score/HighScoresResultsListener"
require "org/allbinary/thread/ARunnable"

class HighScoresCanvas < GameCommandCanvas
    include HighScoresResultsListener
    attr_accessor :paintable, :highScoreCommandsFactory, :waitPaintable, :highScoresPaintable, :highScoresFactoryInterface, :colorFillPaintable, :highScoresHelper, :gameInfo, :highScoresCanvasInputProcessor, :currentCommand, :hasPainted

    def initialize_fields
        @paintable = NullPaintable.getInstance()
        @highScoreCommandsFactory = HighScoreCommandsFactory.getInstance()
        @waitPaintable = SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE)
        @highScoresPaintable = nil
        @highScoresFactoryInterface = nil
        @colorFillPaintable = nil
        @highScoresHelper = HighScoresHelperBase.new()
        @gameInfo = nil
        @highScoresCanvasInputProcessor = nil
        @currentCommand = @highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]
        @hasPainted = false
    end
    

    def initialize(commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)
        super(commandListener, HighScoresCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @highScoresPaintable = paintable
        @highScoresFactoryInterface = highScoresFactoryInterface
        @highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance(self)
        @gameInfo = gameInfo
        @waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        self.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
        if @highScoresHelper.getHighScoresArray() == NoHighScoresFactory.getInstance().NO_HIGH_SCORES
            self.setPaintable(@waitPaintable)
        else
            @logUtil.putF("Show HighScores that are already loaded", self, @commonStrings.CONSTRUCTOR)
            self.updateCommand(@currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        end
        class HighScoreRunnable < ARunnable
            attr_accessor :highScoresCanvas

            def initialize_fields
                @highScoresCanvas = nil
            end
            

            def initialize(highScoresCanvas)
                super()
                initialize_fields
                @highScoresCanvas = highScoresCanvas
            end
            

            def run()
                commonStrings = CommonStrings.getInstance()
                logUtil = LogUtil.getInstance()
                highScoresCanvas = @highScoresCanvas
                begin
                    isHTML = J2MEUtil.isHTML()
                    if !isHTML
                        while !highScoresCanvas.hasPainted
                        end
                        highScoresCanvas.hasPainted = false
                    end
                    stringMaker = StringMaker.new()
                    systemWrapper = ABSystemWrapper.getInstance()
                    currentTimeMillis = systemWrapper.currentTimeMillis()
                    logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).to_s, self, commonStrings.RUN)
                    highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas)
                    if !isHTML
                        while !highScoresCanvas.hasPainted
                        end
                    end
                    stringMaker.delete(0, stringMaker.length())
                    logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).to_s, self, commonStrings.RUN)
                    highScoresCanvas.executeUpdate()
                rescue StandardError => e
                    logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                end
            end
        end
        SecondaryThreadPool.getInstance().runTask(HighScoreRunnable.new(self))
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    def open()
        super()
        @highScoresCanvasInputProcessor.open()
    end
    

    # throws Exception
    def close()
        super()
        @highScoresCanvasInputProcessor.close()
    end
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        @paintable.paint(graphics)
        if @waitPaintable != @paintable
            @highScoresCanvasInputProcessor.paint(graphics)
        end
        super(graphics)
        @hasPainted = true
    end
    

    def executeUpdate()
        begin
            @highScoresFactoryInterface.fetchHighScores(self.getGameInfo(), self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end
    

    def getHighScoresPaintable()
        return @highScoresPaintable
    end
    

    def setHighScoresArray(highScoresArray)
        begin
            if highScoresArray != nil
                @logUtil.putF(StringMaker.new().append(@commonStrings.START).appendint(highScoresArray.length).to_s, self, "setHighScoresArray")
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
    

    # throws Exception
    def updateCommand(command)
        @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(@stringUtil.toString(command)).to_s, self, @commonStrings.UPDATE)
        gameCommandsFactory = GameCommandsFactory.getInstance()
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
                self.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance())
            end
            if index != nextIndex
                self.removeAllCommands()
                self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                self.addCommand(@highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex])
            end
        end
        @currentCommand = command
        self.close()
        self.class.superclass.instance_method(:initMenu).bind(self).call()
        self.open()
        @repaintBehavior.onChangeRepaint(self)
    end
    

    def getGameInfo()
        return @gameInfo
    end
    

    def setPaintable(paintable)
        @paintable = paintable
        @repaintBehavior.onChangeRepaint(self)
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintableFactory"
require "org/allbinary/game/score/HighScoreCommandsFactory"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresCanvasInputProcessor"
require "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface"
require "org/allbinary/game/score/HighScoresFactoryInterface"
require "org/allbinary/game/score/HighScoresHelperBase"
require "org/allbinary/game/score/HighScoresPaintable"
require "org/allbinary/game/score/NoHighScoresFactory"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/paint/SimpleTextPaintable"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/SecondaryThreadPool"
require "org/allbinary/logic/ABSystemWrapper"

class HighScoresCanvas
    NAME = "HighScoresCanvas"
end

