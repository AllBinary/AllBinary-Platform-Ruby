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


module ::Org; module Allbinary; module Game; module Layer

class AdvancedRTSLayerUtil
    

    def self.getInstance()
        return AdvancedRTSLayerUtil.instance
    end
    

    def createFakeRTSLayerHashtable(baseRaceTrackGeographicMap)
        hashtable = RTSLayerUtil.getInstance().createFakeRTSLayerHashtable(baseRaceTrackGeographicMap)
        hashtable.put(::Org::Allbinary::Game::Layer::Waypoint::WorkWaypoint::ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(50))
        return hashtable
    end

    def self.instance()
        AdvancedRTSLayerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AdvancedRTSLayerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AdvancedRTSLayerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AdvancedRTSLayerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WorkWaypoint, "org/allbinary/game/layer/waypoint/WorkWaypoint" unless const_defined?(:WorkWaypoint, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :BaseRaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap" unless const_defined?(:BaseRaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :RTSLayerUtil, "org/allbinary/game/layer/RTSLayerUtil" unless const_defined?(:RTSLayerUtil, false)

begin
    AdvancedRTSLayerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

