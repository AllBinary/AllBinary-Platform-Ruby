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
# package org.allbinary.media.graphics.geography.map.racetrack.threed


class AllBinaryThreedTiledLayerFactory
    

    def self.getInstance()
        return AllBinaryThreedTiledLayerFactory.instance
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(raceTrackInfo, raceTrackData)
        raise StandardError.new("No Threed")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

class AllBinaryThreedTiledLayerFactory
    @@instance = AllBinaryThreedTiledLayerFactory.new()
end

