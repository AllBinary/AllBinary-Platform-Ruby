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
# package org.allbinary.game.media.graphics.geography.map.racetrack

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

class SimplePathFinderGraphVisitorFactory < ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFinderGraphVisitorFactoryBase
    attr_accessor :edgeMinimum, :minPathWeight, :maxPathWeight

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_SimplePathFinderGraphVisitorFactory
        @edgeMinimum = nil unless instance_variable_defined?(:@edgeMinimum)
        @minPathWeight = nil unless instance_variable_defined?(:@minPathWeight)
        @maxPathWeight = nil unless instance_variable_defined?(:@maxPathWeight)
    end
    

    def initialize(edgeMinimum, minPathWeight, maxPathWeight)
        super()
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_SimplePathFinderGraphVisitorFactory
        @edgeMinimum = edgeMinimum
        @minPathWeight = minPathWeight
        @maxPathWeight = maxPathWeight
    end
    

    def getInstance(geographicMapInterface)
        return BasePathFinderGraphVisitor.new(geographicMapInterface, @edgeMinimum, @minPathWeight, @maxPathWeight)
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFinderGraphVisitorBase, "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase" unless const_defined?(:PathFinderGraphVisitorBase, false); end; end; end; end; end; end
autoload :BasePathFinderGraphVisitor, "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor" unless const_defined?(:BasePathFinderGraphVisitor, false)

end; end; end; end; end; end; end; end

