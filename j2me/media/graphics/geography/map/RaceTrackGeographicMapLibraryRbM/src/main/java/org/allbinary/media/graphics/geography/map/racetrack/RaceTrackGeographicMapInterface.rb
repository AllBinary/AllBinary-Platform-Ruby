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
require "org/allbinary/media/graphics/geography/map/GeographicMapInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

module RaceTrackGeographicMapInterface
    include ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapInterface
    

    def getRaceTrackInfo()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRaceTrackInfo, 0
    

    def setRaceTrackInfo(aRaceTrackInfo)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setRaceTrackInfo, 1
    

    def getRaceTrackData()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRaceTrackData, 0
    

    def setRaceTrackData(raceTrackData)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setRaceTrackData, 1
end

autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

end; end; end; end; end; end; end

