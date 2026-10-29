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


class RaceTrackInfo
    attr_accessor :id, :name, :raceTrackFrictionProperties, :foregroundBasicColor, :backgroundBasicColor, :qualifyTime, :worstContinuePosition, :totalLaps

    def initialize_fields
        @id = nil
        @name = nil
        @raceTrackFrictionProperties = nil
        @foregroundBasicColor = nil
        @backgroundBasicColor = nil
        @qualifyTime = nil
        @worstContinuePosition = nil
        @totalLaps = nil
    end
    

    def initialize(id, name, raceTrackFrictionProperties, foregroundBasicColor, backgroundBasicColor, qualifyTime, worstContinuePosition, totalLaps)
        initialize_fields
        @id = id
        @name = name
        @raceTrackFrictionProperties = raceTrackFrictionProperties
        @backgroundBasicColor = backgroundBasicColor
        @foregroundBasicColor = foregroundBasicColor
        @qualifyTime = qualifyTime
        @worstContinuePosition = worstContinuePosition
        @totalLaps = totalLaps
    end
    

    def getId()
        return @id
    end
    

    def setId(id)
        @id = id
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def getQualifyTime()
        return @qualifyTime
    end
    

    def setQualifyTime(qualifyTime)
        @qualifyTime = qualifyTime
    end
    

    def getWorstContinuePosition()
        return @worstContinuePosition
    end
    

    def setWorstContinuePosition(worstContinuePosition)
        @worstContinuePosition = worstContinuePosition
    end
    

    def getTotalLaps()
        return @totalLaps
    end
    

    def setTotalLaps(totalLaps)
        @totalLaps = totalLaps
    end
    

    def getForegroundBasicColor()
        return @foregroundBasicColor
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
        @foregroundBasicColor = foregroundBasicColor
    end
    

    def getBackgroundBasicColor()
        return @backgroundBasicColor
    end
    

    def setBackgroundBasicColor(backgroundBasicColor)
        @backgroundBasicColor = backgroundBasicColor
    end
    

    def getRaceTrackFrictionProperties()
        return @raceTrackFrictionProperties
    end
    

    def setRaceTrackFrictionProperties(raceTrackFrictionProperties)
        @raceTrackFrictionProperties = raceTrackFrictionProperties
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackFrictionProperties"

