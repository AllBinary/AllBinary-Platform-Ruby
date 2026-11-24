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

class RaceTrackFrictionProperties
    attr_accessor :ROAD_FRICTION_NOMINATOR, :GROUND_FRICTION_NOMINATOR

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackFrictionProperties
        @ROAD_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@ROAD_FRICTION_NOMINATOR)
        @GROUND_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@GROUND_FRICTION_NOMINATOR)
    end
    

    def initialize(roadFriction, groundFriction)
        jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackFrictionProperties
        @ROAD_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - roadFriction
        @GROUND_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - groundFriction
    end
    

    def getRoadFrictionNominator()
        return @ROAD_FRICTION_NOMINATOR
    end
    

    def getGroundFrictionNominator()
        return @GROUND_FRICTION_NOMINATOR
    end
end

module ::Org; module Allbinary; module Game; module Physics; module Friction; autoload :FrictionData, "org/allbinary/game/physics/friction/FrictionData" unless const_defined?(:FrictionData, false); end; end; end; end; end

end; end; end; end; end; end; end

