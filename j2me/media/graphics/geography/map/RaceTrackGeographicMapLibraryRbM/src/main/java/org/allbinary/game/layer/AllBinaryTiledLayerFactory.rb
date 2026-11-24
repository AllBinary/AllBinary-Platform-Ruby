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
require "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer

class AllBinaryTiledLayerFactory
    include ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::AllBinaryTiledLayerFactoryInterface
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData)
        allbinaryTiledLayer = nil
        tiledLayer = ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::TiledLayerFactory.new().getInstance(raceTrackData)
        allbinaryTiledLayer = AllBinaryJ2METiledLayer.new(raceTrackData.getId(), tiledLayer, raceTrackData.getMapArray(), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i)
        allbinaryTiledLayer.setCells(raceTrackData.getMapArray())
        return allbinaryTiledLayer
    end
    java_overload :getInstance, 2
    

    # throws Exception
    def getMiniInstance(raceTrackData)
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        tiledLayer = ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::TiledLayerFactory.new().getMiniInstance(raceTrackData)
        allbinaryTiledLayer = AllBinaryJ2METiledLayer.new(smallIntegerSingletonFactory.getAt(raceTrackData.getId().to_i + 100 + 1), tiledLayer, raceTrackData.getMapArray(), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i)
        allbinaryTiledLayer.setCells(raceTrackData.getMapArray())
        return allbinaryTiledLayer
    end
    java_overload :getMiniInstance, 1
end

module ::Javax; module Microedition; module Lcdui; module Game; autoload :TiledLayer, "javax/microedition/lcdui/game/TiledLayer" unless const_defined?(:TiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :TiledLayerFactory, "org/allbinary/media/graphics/geography/map/racetrack/TiledLayerFactory" unless const_defined?(:TiledLayerFactory, false); end; end; end; end; end; end; end
autoload :AllBinaryJ2METiledLayer, "org/allbinary/game/layer/AllBinaryJ2METiledLayer" unless const_defined?(:AllBinaryJ2METiledLayer, false)
autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false)

end; end; end; end

