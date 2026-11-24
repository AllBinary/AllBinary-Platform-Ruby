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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBaseFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class CustomMapGeneratorFactory < CustomMapGeneratorBaseFactory
    

    # throws Exception
    def create(raceTrackGeographicMap)
        return CustomMapGenerator.new(raceTrackGeographicMap)
    end
    java_overload :create, 1
end

autoload :CustomMapGenerator, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator" unless const_defined?(:CustomMapGenerator, false)
autoload :CustomMapGeneratorBase, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase" unless const_defined?(:CustomMapGeneratorBase, false)
autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false)

end; end; end; end; end; end; end

