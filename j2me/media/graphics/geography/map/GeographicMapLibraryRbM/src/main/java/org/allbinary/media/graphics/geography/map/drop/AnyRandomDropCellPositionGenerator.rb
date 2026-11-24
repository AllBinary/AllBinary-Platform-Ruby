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
# package org.allbinary.media.graphics.geography.map.drop

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop

class AnyRandomDropCellPositionGenerator < BaseDropCellPositionGenerator
    attr_accessor :list, :geographicMapInterface

    def jfields_org_allbinary_media_graphics_geography_map_drop_AnyRandomDropCellPositionGenerator
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @geographicMapInterface = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end

    def initialize
        super()
        jfields_org_allbinary_media_graphics_geography_map_drop_AnyRandomDropCellPositionGenerator
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        @geographicMapInterface = geographicMapInterface
        basicGeographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        randomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        total = tiledLayer.getColumns() * tiledLayer.getRows()
        randomColumn = 0
        randomRow = 0
        geographicMapCellPosition = nil
        index = total
        while (index -= 1) >= 0
            randomColumn = randomFactory.getAbsoluteNextInt(tiledLayer.getColumns())
            randomRow = randomFactory.getAbsoluteNextInt(tiledLayer.getRows())
            geographicMapCellPosition = basicGeographicMapCellPositionFactory.getAt(randomColumn, randomRow)
            if self.isDropAllowedAt(geographicMapCellPosition)
                @list.add(geographicMapCellPosition)
            end
        end
    end
    java_overload :update, 2
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    java_overload :processTick, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end

end; end; end; end; end; end; end

