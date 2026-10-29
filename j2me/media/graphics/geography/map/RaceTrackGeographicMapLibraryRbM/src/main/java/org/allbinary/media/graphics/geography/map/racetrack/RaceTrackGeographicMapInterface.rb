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

require "org/allbinary/media/graphics/geography/map/GeographicMapInterface"

module RaceTrackGeographicMapInterface
    include GeographicMapInterface
    

    def getRaceTrackInfo()
        raise NotImplementedError
    end
    

    def setRaceTrackInfo(aRaceTrackInfo)
        raise NotImplementedError
    end
    

    def getRaceTrackData()
        raise NotImplementedError
    end
    

    def setRaceTrackData(raceTrackData)
        raise NotImplementedError
    end
end

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

