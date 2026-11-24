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
# package org.allbinary.game.terrain


module ::Org; module Allbinary; module Game; module Terrain

class BasicTerrainInfo
    attr_accessor :angle

    def jfields_org_allbinary_game_terrain_BasicTerrainInfo
        @angle = nil unless instance_variable_defined?(:@angle)
    end
    

    def initialize(angle)
        jfields_org_allbinary_game_terrain_BasicTerrainInfo
        @angle = angle
    end
    

    def getAngle()
        return @angle
    end
    

    def setAngle(angle)
        @angle = angle
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASIC_TERRAIN_INFO, BasicTerrainInfo.new(::Org::Allbinary::MathPackage::AngleFactory.getInstance().NOT_ANGLE))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicTerrainInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASIC_TERRAIN_INFO].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end

begin
    BasicTerrainInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

