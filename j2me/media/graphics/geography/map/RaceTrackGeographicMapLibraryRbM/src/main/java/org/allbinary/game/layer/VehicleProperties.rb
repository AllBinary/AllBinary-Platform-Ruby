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


class VehicleProperties
    attr_accessor :velocityProperties, :vehicleFrictionProperties

    def initialize_fields
        @velocityProperties = nil
        @vehicleFrictionProperties = nil
    end
    

    def initialize(velocityProperties, vehicleFrictionProperties)
        initialize_fields
        @velocityProperties = velocityProperties
        @vehicleFrictionProperties = vehicleFrictionProperties
    end
    

    def getVehicleFrictionProperties()
        return @vehicleFrictionProperties
    end
    

    def setVehicleFrictionProperties(vehicleFrictionProperties)
        @vehicleFrictionProperties = vehicleFrictionProperties
    end
    

    def getVelocityProperties()
        return @velocityProperties
    end
end

require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/game/layer/VehicleFrictionProperties"

