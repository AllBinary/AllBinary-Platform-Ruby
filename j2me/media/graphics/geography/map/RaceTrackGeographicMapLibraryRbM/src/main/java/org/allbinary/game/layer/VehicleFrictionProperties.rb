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

require "org/allbinary/game/physics/FrictionProperties"

class VehicleFrictionProperties < FrictionProperties
    attr_accessor :TIRE_FRICTION_NOMINATOR, :BRAKE_FRICTION_NOMINATOR, :AIR_FRICTION_NOMINATOR, :CRASH_FRICTION_NOMINATOR

    def initialize_fields
        @TIRE_FRICTION_NOMINATOR = nil
        @BRAKE_FRICTION_NOMINATOR = nil
        @AIR_FRICTION_NOMINATOR = nil
        @CRASH_FRICTION_NOMINATOR = nil
    end
    

    def initialize(tireFriction, brakeFriction, airFriction, crashFriction)
        super()
        initialize_fields
        @TIRE_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - tireFriction
        @BRAKE_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - brakeFriction
        @AIR_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - airFriction
        @CRASH_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - crashFriction
    end
    

    def getTireFrictionNominator()
        return @TIRE_FRICTION_NOMINATOR
    end
    

    def getBrakeFrictionNominator()
        return @BRAKE_FRICTION_NOMINATOR
    end
    

    def getAirFrictionNominator()
        return @AIR_FRICTION_NOMINATOR
    end
    

    def getCrashFrictionNominator()
        return @CRASH_FRICTION_NOMINATOR
    end
end

require "org/allbinary/game/physics/friction/FrictionData"

