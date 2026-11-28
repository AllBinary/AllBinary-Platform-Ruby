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

require "java/lang/Object"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class FinalPositionRaceTrackFactory
    

    def initialize()
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        return ((@@index += 1) - 1)
        end
    end
    

    def self.reset()
        java_monitor.synchronize do
        @@index = FinalPositionRaceTrackFactory::FIRST_POSITION
        end
    end

    def self.index()
        FinalPositionRaceTrackFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        FinalPositionRaceTrackFactory.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:FIRST_POSITION, 1)
        begin
            @@index = FinalPositionRaceTrackFactory::FIRST_POSITION
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FinalPositionRaceTrackFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:FIRST_POSITION].include?(name)
        end
        super
    end
end

begin
    FinalPositionRaceTrackFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

