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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/physics/FrictionProperties"

module ::Org; module Allbinary; module Game; module Layer

class VehicleFrictionProperties < ::Org::Allbinary::Game::Physics::FrictionProperties
    attr_accessor :TIRE_FRICTION_NOMINATOR, :BRAKE_FRICTION_NOMINATOR, :AIR_FRICTION_NOMINATOR, :CRASH_FRICTION_NOMINATOR

    def jfields_org_allbinary_game_layer_VehicleFrictionProperties
        @TIRE_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@TIRE_FRICTION_NOMINATOR)
        @BRAKE_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@BRAKE_FRICTION_NOMINATOR)
        @AIR_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@AIR_FRICTION_NOMINATOR)
        @CRASH_FRICTION_NOMINATOR = nil unless instance_variable_defined?(:@CRASH_FRICTION_NOMINATOR)
    end
    

    def initialize(tireFriction, brakeFriction, airFriction, crashFriction)
        super()
        jfields_org_allbinary_game_layer_VehicleFrictionProperties
        @TIRE_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - tireFriction
        @BRAKE_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - brakeFriction
        @AIR_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - airFriction
        @CRASH_FRICTION_NOMINATOR = ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator() - crashFriction
    end
    

    def getTireFrictionNominator()
        return @TIRE_FRICTION_NOMINATOR
    end
    java_overload :getTireFrictionNominator, 0
    

    def getBrakeFrictionNominator()
        return @BRAKE_FRICTION_NOMINATOR
    end
    java_overload :getBrakeFrictionNominator, 0
    

    def getAirFrictionNominator()
        return @AIR_FRICTION_NOMINATOR
    end
    java_overload :getAirFrictionNominator, 0
    

    def getCrashFrictionNominator()
        return @CRASH_FRICTION_NOMINATOR
    end
    java_overload :getCrashFrictionNominator, 0
end

module ::Org; module Allbinary; module Game; module Physics; module Friction; autoload :FrictionData, "org/allbinary/game/physics/friction/FrictionData" unless const_defined?(:FrictionData, false); end; end; end; end; end

end; end; end; end

