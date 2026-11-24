# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.behavior.topview

require "java/lang/JavaOverload"
require "org/allbinary/game/physics/FrictionProperties"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class CharacterFrictionProperties < ::Org::Allbinary::Game::Physics::FrictionProperties
    attr_accessor :WATER_FRICTION_NOMINATOR, :AIR_FRICTION_NOMINATOR, :COLLISION_FRICTION_NOMINATOR

    def jfields_org_allbinary_game_behavior_topview_CharacterFrictionProperties
        @WATER_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@WATER_FRICTION_NOMINATOR)
        @AIR_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@AIR_FRICTION_NOMINATOR)
        @COLLISION_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@COLLISION_FRICTION_NOMINATOR)
    end
    

    def initialize(airFriction, waterFriction, collisionFriction)
        super()
        jfields_org_allbinary_game_behavior_topview_CharacterFrictionProperties
        @AIR_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - airFriction
        @COLLISION_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - collisionFriction
        @WATER_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - waterFriction
    end
    

    def getWATER_FRICTION_NOMINATOR()
        return @WATER_FRICTION_NOMINATOR
    end
    java_overload :getWATER_FRICTION_NOMINATOR, 0
    

    def getAIR_FRICTION_NOMINATOR()
        return @AIR_FRICTION_NOMINATOR
    end
    java_overload :getAIR_FRICTION_NOMINATOR, 0
    

    def getCOLLISION_FRICTION_NOMINATOR()
        return @COLLISION_FRICTION_NOMINATOR
    end
    java_overload :getCOLLISION_FRICTION_NOMINATOR, 0
end

module ::Org; module Allbinary; module Game; module Physics; module Friction; autoload :FrictionData, "org/allbinary/game/physics/friction/FrictionData" unless const_defined?(:FrictionData, false); end; end; end; end; end

end; end; end; end; end

