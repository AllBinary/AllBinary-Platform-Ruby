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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; module Threed

class AllBinaryThreedTiledLayerFactory
    

    def self.getInstance()
        return AllBinaryThreedTiledLayerFactory.instance
    end
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData)
        raise StandardError.new("No Threed")
    end

    def self.instance()
        AllBinaryThreedTiledLayerFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AllBinaryThreedTiledLayerFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AllBinaryThreedTiledLayerFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryThreedTiledLayerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false); end; end; end; end; end; end; end

begin
    AllBinaryThreedTiledLayerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

