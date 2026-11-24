# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"

module ::Org; module Allbinary; module Game; module Layer

class GeographicMapCellPositionArea < GeographicMapCellPositionAreaBase
    attr_accessor :cellPositionsUtil, :layerCoveringCellPositionsUtil, :reusableOccupyingGeographicMapCellPositionList, :reusableSurroundingGeographicMapCellPositionList, :surroundingCircularIndexUtil, :layerInterface, :LIST, :occupyingGeographicMapCellPositionList, :surroundingGeographicMapCellPositionList

    def jfields_org_allbinary_game_layer_GeographicMapCellPositionArea
        @cellPositionsUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::CellPositionsUtil.getInstance()
        @layerCoveringCellPositionsUtil = ::Org::Allbinary::Game::Layer::Geographic::Map::LayerCoveringCellPositionsUtil.getInstance()
        @reusableOccupyingGeographicMapCellPositionList = ::Org::Allbinary::Util::BasicArrayListS.new(4)
        @reusableSurroundingGeographicMapCellPositionList = ::Org::Allbinary::Util::BasicArrayListS.new(12)
        @surroundingCircularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(0)
        @layerInterface = nil unless instance_variable_defined?(:@layerInterface)
        @LIST = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @occupyingGeographicMapCellPositionList = @LIST
        @surroundingGeographicMapCellPositionList = @LIST
    end
    

    def initialize(layerInterface)
        super()
        jfields_org_allbinary_game_layer_GeographicMapCellPositionArea
        @layerInterface = layerInterface
    end
    

    # throws Exception
    def update(geographicMapInterface)
        @occupyingGeographicMapCellPositionList = @layerCoveringCellPositionsUtil.getAllXY(geographicMapInterface, @layerInterface, @layerInterface.getXP(), @layerInterface.getYP(), @reusableOccupyingGeographicMapCellPositionList)
        @surroundingGeographicMapCellPositionList = @cellPositionsUtil.getAllSurrounding(geographicMapInterface, @occupyingGeographicMapCellPositionList, @reusableSurroundingGeographicMapCellPositionList)
        @surroundingCircularIndexUtil.setSize(@surroundingGeographicMapCellPositionList.size())
    end
    java_overload :update, 1
    

    def getOccupyingGeographicMapCellPositionList()
        return @occupyingGeographicMapCellPositionList
    end
    java_overload :getOccupyingGeographicMapCellPositionList, 0
    

    def getSurroundingGeographicMapCellPositionList()
        return @surroundingGeographicMapCellPositionList
    end
    java_overload :getSurroundingGeographicMapCellPositionList, 0
    

    def getNextSurroundingGeographicMapCellPosition()
        geographicMapCellPosition = @surroundingGeographicMapCellPositionList.get(@surroundingCircularIndexUtil.getIndex())
        @surroundingCircularIndexUtil.next_()
        return geographicMapCellPosition
    end
    java_overload :getNextSurroundingGeographicMapCellPosition, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map; autoload :LayerCoveringCellPositionsUtil, "org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil" unless const_defined?(:LayerCoveringCellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :CellPositionsUtil, "org/allbinary/media/graphics/geography/map/CellPositionsUtil" unless const_defined?(:CellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end

