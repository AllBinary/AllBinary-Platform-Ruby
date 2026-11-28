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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class RaceTrackRoadsGeographicMapCellHistoryFactory
    

    def initialize()
    end
    

    def self.getInstance()
        return @@geographicMapCellHistory
    end

    def self.geographicMapCellHistory()
        RaceTrackRoadsGeographicMapCellHistoryFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@geographicMapCellHistory) ? @@geographicMapCellHistory : nil
    end

    def self.geographicMapCellHistory=(value)
        RaceTrackRoadsGeographicMapCellHistoryFactory.java_static_fields unless @java_static_fields_started
        @@geographicMapCellHistory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@geographicMapCellHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellHistory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackRoadsGeographicMapCellHistoryFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end

begin
    RaceTrackRoadsGeographicMapCellHistoryFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

