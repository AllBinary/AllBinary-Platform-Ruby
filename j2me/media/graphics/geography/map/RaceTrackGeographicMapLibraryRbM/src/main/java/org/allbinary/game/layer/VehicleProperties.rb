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


module ::Org; module Allbinary; module Game; module Layer

class VehicleProperties
    attr_accessor :velocityProperties, :vehicleFrictionProperties

    def jfields_org_allbinary_game_layer_VehicleProperties
        @velocityProperties = nil unless instance_variable_defined?(:@velocityProperties)
        @vehicleFrictionProperties = nil unless instance_variable_defined?(:@vehicleFrictionProperties)
    end
    

    def initialize(velocityProperties, vehicleFrictionProperties)
        jfields_org_allbinary_game_layer_VehicleProperties
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

module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
autoload :VehicleFrictionProperties, "org/allbinary/game/layer/VehicleFrictionProperties" unless const_defined?(:VehicleFrictionProperties, false)

end; end; end; end

