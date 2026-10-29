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

require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

class RaceTrackGeographicMapCellType < GeographicMapCellType
    attr_accessor :name, :travelCost

    def initialize_fields
        @name = nil
        @travelCost = nil
    end
    

    def initialize(name, type, travelCost, reset)
        super(type, reset)
        initialize_fields
        @name = name
        @travelCost = travelCost
    end
    

    def getTravelCost()
        return @travelCost
    end
end

require "org/allbinary/string/CommonStrings"

