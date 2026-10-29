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

class FinalPositionRaceTrackFactory
    

    def initialize()
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        return ((FinalPositionRaceTrackFactory.index += 1) - 1)
        end
    end
    

    def self.reset()
        java_monitor.synchronize do
        FinalPositionRaceTrackFactory.index = FinalPositionRaceTrackFactory::FIRST_POSITION
        end
    end

    def self.index()
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end
end

class FinalPositionRaceTrackFactory
    FIRST_POSITION = 1
    @@index = FinalPositionRaceTrackFactory::FIRST_POSITION
end

