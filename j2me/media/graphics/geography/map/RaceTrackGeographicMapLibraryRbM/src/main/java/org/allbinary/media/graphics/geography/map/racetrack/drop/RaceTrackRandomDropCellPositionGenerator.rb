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
# package org.allbinary.media.graphics.geography.map.racetrack.drop

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackDropCellPositionGenerator"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; module Drop

class RaceTrackRandomDropCellPositionGenerator < RaceTrackDropCellPositionGenerator
    attr_accessor :myRandomFactory, :cellsPerRowOrColumn, :totalCells, :rowArray, :columnArray, :cellWidth, :cellHeight

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackRandomDropCellPositionGenerator
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
        @cellsPerRowOrColumn = 3
        @totalCells = @cellsPerRowOrColumn * @cellsPerRowOrColumn
        @rowArray = [0, 1, 2, 0, 1, 2, 0, 1, 2]
        @columnArray = [0, 0, 0, 1, 1, 1, 2, 2, 2]
        @cellWidth = 0 unless instance_variable_defined?(:@cellWidth)
        @cellHeight = 0 unless instance_variable_defined?(:@cellHeight)
    end
    

    def self.getInstance()
        return RaceTrackRandomDropCellPositionGenerator::SINGLETON
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackRandomDropCellPositionGenerator
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        RaceTrackRandomDropCellPositionGenerator.superclass.java_super_method(:update, 2).bind(self).call(allBinaryGameLayerManager, geographicMapInterface)
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        @cellWidth = tiledLayer.getCellWidth() / @cellsPerRowOrColumn
        @cellHeight = tiledLayer.getCellHeight() / @cellsPerRowOrColumn
    end
    java_overload :update, 2
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        geographicMapCellPosition = @list.get(index)
        point = geographicMapCellPosition.getPoint()
        randomCell = @myRandomFactory.getAbsoluteNextInt(@totalCells)
        row = @rowArray[randomCell]
        column = @columnArray[randomCell]
        x = point.getX() + (row * @cellWidth)
        y = point.getY() + (column * @cellHeight)
        pickedUpLayerInterfaceFactory = ::Org::Allbinary::Game::Layer::Drop::DropLayerFactory.getInstance().getRandomInstance()
        tiledLayer = @raceTrackGeographicMap.getAllBinaryTiledLayer()
        pickupLayer = ::Org::Allbinary::Game::Layer::Pickup::PickupLayerCircularStaticPool.getInstance().getInstanceXYZ(pickedUpLayerInterfaceFactory, x, y, tiledLayer.getZP() + 3)
        pickupLayer.setTiledLayer(tiledLayer)
        allBinaryLayerManager.append(pickupLayer)
    end
    java_overload :drop, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RaceTrackRandomDropCellPositionGenerator.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackRandomDropCellPositionGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Drop; autoload :DropLayerFactory, "org/allbinary/game/layer/drop/DropLayerFactory" unless const_defined?(:DropLayerFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickupLayerCircularStaticPool, "org/allbinary/game/layer/pickup/PickupLayerCircularStaticPool" unless const_defined?(:PickupLayerCircularStaticPool, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :RaceTrackPickupLayer, "org/allbinary/game/layer/pickup/RaceTrackPickupLayer" unless const_defined?(:RaceTrackPickupLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end

begin
    RaceTrackRandomDropCellPositionGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

