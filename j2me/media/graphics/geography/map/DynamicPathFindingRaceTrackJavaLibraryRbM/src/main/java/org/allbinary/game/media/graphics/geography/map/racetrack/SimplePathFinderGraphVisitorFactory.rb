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

require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase"

class SimplePathFinderGraphVisitorFactory < PathFinderGraphVisitorFactoryBase
    attr_accessor :edgeMinimum, :minPathWeight, :maxPathWeight

    def initialize_fields
        @edgeMinimum = nil
        @minPathWeight = nil
        @maxPathWeight = nil
    end
    

    def initialize(edgeMinimum, minPathWeight, maxPathWeight)
        super()
        initialize_fields
        @edgeMinimum = edgeMinimum
        @minPathWeight = minPathWeight
        @maxPathWeight = maxPathWeight
    end
    

    def getInstance(geographicMapInterface)
        return BasePathFinderGraphVisitor.new(geographicMapInterface, @edgeMinimum, @minPathWeight, @maxPathWeight)
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase"
require "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor"

