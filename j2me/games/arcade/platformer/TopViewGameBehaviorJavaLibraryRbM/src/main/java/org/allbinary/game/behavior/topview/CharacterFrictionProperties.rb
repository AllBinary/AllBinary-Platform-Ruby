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

require "org/allbinary/game/physics/FrictionProperties"

class CharacterFrictionProperties < FrictionProperties
    attr_accessor :WATER_FRICTION_NOMINATOR, :AIR_FRICTION_NOMINATOR, :COLLISION_FRICTION_NOMINATOR

    def initialize_fields
        @WATER_FRICTION_NOMINATOR = nil
        @AIR_FRICTION_NOMINATOR = nil
        @COLLISION_FRICTION_NOMINATOR = nil
    end
    

    def initialize(airFriction, waterFriction, collisionFriction)
        super()
        initialize_fields
        @AIR_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - airFriction
        @COLLISION_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - collisionFriction
        @WATER_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - waterFriction
    end
    

    def getWATER_FRICTION_NOMINATOR()
        return @WATER_FRICTION_NOMINATOR
    end
    

    def getAIR_FRICTION_NOMINATOR()
        return @AIR_FRICTION_NOMINATOR
    end
    

    def getCOLLISION_FRICTION_NOMINATOR()
        return @COLLISION_FRICTION_NOMINATOR
    end
end

require "org/allbinary/game/physics/friction/FrictionData"

