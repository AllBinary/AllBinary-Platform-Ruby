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
        CheatGameInputProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@inputProcessor) ? @@inputProcessor : nil
    end

    def self.inputProcessor=(value)
        CheatGameInputProcessor.java_static_fields unless @java_static_fields_started
        @@inputProcessor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputProcessor = SpecialGameInputFactory::NO_SPECIAL_GAME_INPUT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CheatGameInputProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :GameKeyEventUtil, "org/allbinary/game/input/event/GameKeyEventUtil"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :SpecialGameInputFactory, "org/allbinary/game/layer/special/SpecialGameInputFactory"
autoload :SpecialGameInputInterface, "org/allbinary/game/layer/special/SpecialGameInputInterface"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

begin
    CheatGameInputProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

