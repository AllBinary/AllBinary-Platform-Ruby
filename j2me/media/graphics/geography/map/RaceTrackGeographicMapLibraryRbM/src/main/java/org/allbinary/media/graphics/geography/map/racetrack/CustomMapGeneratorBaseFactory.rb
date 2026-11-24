# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class CustomMapGeneratorBaseFactory
    

    def self.getInstance()
        return CustomMapGeneratorBaseFactory.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def create(raceTrackGeographicMap)
        return CustomMapGeneratorBase.new()
    end

    def self.instance()
        CustomMapGeneratorBaseFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CustomMapGeneratorBaseFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CustomMapGeneratorBaseFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CustomMapGeneratorBaseFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CustomMapGeneratorBase, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase" unless const_defined?(:CustomMapGeneratorBase, false)
autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false)

begin
    CustomMapGeneratorBaseFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

