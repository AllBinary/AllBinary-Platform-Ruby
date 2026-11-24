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
# package org.allbinary.media.graphics.geography.map.racetrack

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class RaceTrackGeographicMapCellType < ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType
    attr_accessor :name, :travelCost

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellType
        @name = nil unless instance_variable_defined?(:@name)
        @travelCost = nil unless instance_variable_defined?(:@travelCost)
    end
    

    def initialize(name, type, travelCost, reset)
        super(type, reset)
        jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellType
        @name = name
        @travelCost = travelCost
    end
    

    def getTravelCost()
        return @travelCost
    end
    java_overload :getTravelCost, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end; end

