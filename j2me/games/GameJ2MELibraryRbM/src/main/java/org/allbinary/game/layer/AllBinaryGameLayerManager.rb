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

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerManager"

module ::Org; module Allbinary; module Game; module Layer

class AllBinaryGameLayerManager < ::Org::Allbinary::Layer::AllBinaryLayerManager
    attr_accessor :backgroundBasicColor, :foregroundBasicColor, :gameInfo, :playerGameInputCompositeInterface

    def jfields_org_allbinary_game_layer_AllBinaryGameLayerManager
        @backgroundBasicColor = nil unless instance_variable_defined?(:@backgroundBasicColor)
        @foregroundBasicColor = nil unless instance_variable_defined?(:@foregroundBasicColor)
        @gameInfo = nil unless instance_variable_defined?(:@gameInfo)
        @playerGameInputCompositeInterface = ::Org::Allbinary::Game::Input::NullPlayerGameInputComposite::NULL_PLAYER_GAME_INPUT_COMPOSITE
    end
    

    def self.getNullInstance()
        if AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (AllBinaryGameLayerManager.instance_exec(AllBinaryGameLayerManager.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE, ::Org::Allbinary::Game::GameInfo::NONE)) { |java_value| remove_const(:NULL_ALLBINARY_LAYER_MANAGER) if const_defined?(:NULL_ALLBINARY_LAYER_MANAGER, false); const_set(:NULL_ALLBINARY_LAYER_MANAGER, java_value) })
        end
        return AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER
    end
    

    def initialize(backgroundBasicColor, foregroundBasicColor, gameInfo)
        super()
        jfields_org_allbinary_game_layer_AllBinaryGameLayerManager
        @backgroundBasicColor = backgroundBasicColor
        @foregroundBasicColor = foregroundBasicColor
        itemColorFactory = ::Org::Allbinary::Graphics::ItemColorFactory.getInstance()
        itemColorFactory.INVERT_PAINT = @backgroundBasicColor.to_i
        itemColorFactory.PAINT = @foregroundBasicColor.to_i
        @gameInfo = gameInfo
    end
    

    def getLayerManager()
        return self
    end
    java_overload :getLayerManager, 0
    

    def init()
    end
    java_overload :init, 0
    

    def getBackgroundBasicColor()
        return @backgroundBasicColor
    end
    java_overload :getBackgroundBasicColor, 0
    

    def setBackgroundBasicColor(backgroundBasicColor)
        @backgroundBasicColor = backgroundBasicColor
        ::Org::Allbinary::Graphics::ItemColorFactory.getInstance().INVERT_PAINT = @backgroundBasicColor.to_i
    end
    java_overload :setBackgroundBasicColor, 1
    

    def getForegroundBasicColor()
        return @foregroundBasicColor
    end
    java_overload :getForegroundBasicColor, 0
    

    def setForegroundBasicColor(foregroundBasicColor)
        @foregroundBasicColor = foregroundBasicColor
        ::Org::Allbinary::Graphics::ItemColorFactory.getInstance().PAINT = @foregroundBasicColor.to_i
    end
    java_overload :setForegroundBasicColor, 1
    

    def getGameInfo()
        return @gameInfo
    end
    java_overload :getGameInfo, 0
    

    def setGameInfo(gameInfo)
        @gameInfo = gameInfo
    end
    java_overload :setGameInfo, 1
    

    def setLayerProcessorList(list)
        layerProcessorInterfaceArray = Array.new(list.size(), nil)
        size = layerProcessorInterfaceArray.length
        (0...size).each do |index|
            layerProcessorInterfaceArray[index] = list.objectArray[index]
        end
        self.setLayerProcessorArray(layerProcessorInterfaceArray)
    end
    java_overload :setLayerProcessorList, 1
    

    def setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface)
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
    end
    java_overload :setPlayerGameInputCompositeInterface, 1
    

    def getPlayerGameInputCompositeInterface()
        return @playerGameInputCompositeInterface
    end
    java_overload :getPlayerGameInputCompositeInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_LAYER_MANAGER, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
            const_set(:ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(22))
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

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :NullPlayerGameInputComposite, "org/allbinary/game/input/NullPlayerGameInputComposite" unless const_defined?(:NullPlayerGameInputComposite, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlayerGameInputCompositeInterface, "org/allbinary/game/input/PlayerGameInputCompositeInterface" unless const_defined?(:PlayerGameInputCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :ItemColorFactory, "org/allbinary/graphics/ItemColorFactory" unless const_defined?(:ItemColorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerProcessor, "org/allbinary/layer/LayerProcessor" unless const_defined?(:LayerProcessor, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    AllBinaryGameLayerManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

