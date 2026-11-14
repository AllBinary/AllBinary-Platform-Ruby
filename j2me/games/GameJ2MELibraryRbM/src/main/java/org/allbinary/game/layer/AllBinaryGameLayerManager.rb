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
            (AllBinaryGameLayerManager.send(:remove_const, :NULL_ALLBINARY_LAYER_MANAGER) if AllBinaryGameLayerManager.const_defined?(:NULL_ALLBINARY_LAYER_MANAGER, false); AllBinaryGameLayerManager.const_set(:NULL_ALLBINARY_LAYER_MANAGER, AllBinaryGameLayerManager.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo::NONE)))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_LAYER_MANAGER, NullUtil.getInstance().NULL_OBJECT)
            const_set(:ID, SmallIntegerSingletonFactory.getInstance().getAt(22))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryGameLayerManager"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_LAYER_MANAGER, :ID].include?(name)
        end
        super
    end
end

autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :NullPlayerGameInputComposite, "org/allbinary/game/input/NullPlayerGameInputComposite"
autoload :PlayerGameInputCompositeInterface, "org/allbinary/game/input/PlayerGameInputCompositeInterface"
autoload :ItemColorFactory, "org/allbinary/graphics/ItemColorFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :LayerProcessor, "org/allbinary/layer/LayerProcessor"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

begin
    AllBinaryGameLayerManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

