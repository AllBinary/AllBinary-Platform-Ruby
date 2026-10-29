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
# package org.allbinary.game.layer

require "org/allbinary/layer/AllBinaryLayerManager"

class AllBinaryGameLayerManager < AllBinaryLayerManager
    attr_accessor :backgroundBasicColor, :foregroundBasicColor, :gameInfo, :playerGameInputCompositeInterface

    def initialize_fields
        @backgroundBasicColor = nil
        @foregroundBasicColor = nil
        @gameInfo = nil
        @playerGameInputCompositeInterface = NullPlayerGameInputComposite::NULL_PLAYER_GAME_INPUT_COMPOSITE
    end
    

    def self.getNullInstance()
        if AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().NULL_OBJECT
            AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo::NONE)
        end
        return AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER
    end
    

    def initialize(backgroundBasicColor, foregroundBasicColor, gameInfo)
        super()
        initialize_fields
        @backgroundBasicColor = backgroundBasicColor
        @foregroundBasicColor = foregroundBasicColor
        itemColorFactory = ItemColorFactory.getInstance()
        itemColorFactory.INVERT_PAINT = @backgroundBasicColor.to_i
        itemColorFactory.PAINT = @foregroundBasicColor.to_i
        @gameInfo = gameInfo
    end
    

    def getLayerManager()
        return self
    end
    

    def init()
    end
    

    def getBackgroundBasicColor()
        return @backgroundBasicColor
    end
    

    def setBackgroundBasicColor(backgroundBasicColor)
        @backgroundBasicColor = backgroundBasicColor
        ItemColorFactory.getInstance().INVERT_PAINT = @backgroundBasicColor.to_i
    end
    

    def getForegroundBasicColor()
        return @foregroundBasicColor
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
        @foregroundBasicColor = foregroundBasicColor
        ItemColorFactory.getInstance().PAINT = @foregroundBasicColor.to_i
    end
    

    def getGameInfo()
        return @gameInfo
    end
    

    def setGameInfo(gameInfo)
        @gameInfo = gameInfo
    end
    

    def setLayerProcessorList(list)
        layerProcessorInterfaceArray = Array.new(list.size(), nil)
        size = layerProcessorInterfaceArray.length
        (0...size).each do |index|
            layerProcessorInterfaceArray[index] = list.objectArray[index]
        end
        self.setLayerProcessorArray(layerProcessorInterfaceArray)
    end
    

    def setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface)
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
    end
    

    def getPlayerGameInputCompositeInterface()
        return @playerGameInputCompositeInterface
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/game/input/NullPlayerGameInputComposite"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"
require "org/allbinary/graphics/ItemColorFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/LayerProcessor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/util/BasicArrayList"

class AllBinaryGameLayerManager
    NULL_ALLBINARY_LAYER_MANAGER = NullUtil.getInstance().NULL_OBJECT
    ID = SmallIntegerSingletonFactory.getInstance().getAt(22)
end

