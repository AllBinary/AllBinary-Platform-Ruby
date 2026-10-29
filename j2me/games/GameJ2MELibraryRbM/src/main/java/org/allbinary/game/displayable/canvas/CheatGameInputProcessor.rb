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
require "org/allbinary/game/input/PlayerGameInput"

class CheatGameInputProcessor < PlayerGameInput
    attr_accessor :PROCESS_GAME, :gameCanvas, :gameKeyFactory

    def initialize_fields
        @PROCESS_GAME = "processGame"
        @gameCanvas = nil
        @gameKeyFactory = GameKeyFactory.getInstance()
    end
    

    def initialize(gameCanvas)
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initialize_fields
        @gameCanvas = gameCanvas
    end
    

    def update()
        java_monitor.synchronize do
        begin
            gameLayerManager = @gameCanvas.getLayerManager()
            list = self.getGameKeyEventList()
            size = list.size()
            (0...size).each do |index|
                anyType = list.objectArray[index]
                key = GameKeyEventUtil.getKey(anyType)
                if key == @gameKeyFactory.LEVEL_DOWN.getId()
                    CheatGameInputProcessor.inputProcessor.strafeLeft()
                    break
                elsif key == @gameKeyFactory.LEVEL_UP.getId()
                    CheatGameInputProcessor.inputProcessor.strafeRight()
                    break
                end
                if key == @gameKeyFactory.LEFT.getId()
                    CheatGameInputProcessor.inputProcessor.left()
                    break
                elsif key == @gameKeyFactory.RIGHT.getId()
                    CheatGameInputProcessor.inputProcessor.right()
                    break
                elsif key == @gameKeyFactory.UP.getId()
                    CheatGameInputProcessor.inputProcessor.up()
                    break
                elsif key == @gameKeyFactory.DOWN.getId()
                    CheatGameInputProcessor.inputProcessor.down()
                    break
                elsif key == @gameKeyFactory.KEY_NUM1.getId()
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent::NONE)
                    break
                elsif key == @gameKeyFactory.KEY_NUM3.getId()
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent::NONE)
                    break
                end
            end
            list.clear()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
        end
    end

    def self.inputProcessor()
        return defined?(@@inputProcessor) ? @@inputProcessor : nil
    end

    def self.inputProcessor=(value)
        @@inputProcessor = value
    end
end

require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventUtil"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/special/SpecialGameInputFactory"
require "org/allbinary/game/layer/special/SpecialGameInputInterface"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class CheatGameInputProcessor
    @@inputProcessor = SpecialGameInputFactory::NO_SPECIAL_GAME_INPUT
end

