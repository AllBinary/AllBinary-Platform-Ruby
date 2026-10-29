# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer


class AdvancedRTSLayerUtil
    

    def self.getInstance()
        return AdvancedRTSLayerUtil.instance
    end
    

    def createFakeRTSLayerHashtable(baseRaceTrackGeographicMap)
        hashtable = RTSLayerUtil.getInstance().createFakeRTSLayerHashtable(baseRaceTrackGeographicMap)
        hashtable.put(WorkWaypoint::ID, SmallIntegerSingletonFactory.getInstance().getAt(50))
        return hashtable
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/waypoint/WorkWaypoint"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/layer/RTSLayerUtil"

class AdvancedRTSLayerUtil
    @@instance = AdvancedRTSLayerUtil.new()
end

