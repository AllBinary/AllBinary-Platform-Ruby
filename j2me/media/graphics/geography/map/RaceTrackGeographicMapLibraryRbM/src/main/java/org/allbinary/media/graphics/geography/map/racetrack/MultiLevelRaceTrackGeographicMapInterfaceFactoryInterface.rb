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
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterfaceFactoryInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

module MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface
    include RaceTrackGeographicMapInterfaceFactoryInterface
    

    # throws Exception
    def getFirstWaveWithTrack(track)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getFirstWaveWithTrack, 1
    

    def getTotalTracks()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTotalTracks, 0
    

    def getTotalLevels()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTotalLevels, 0
end

end; end; end; end; end; end; end

