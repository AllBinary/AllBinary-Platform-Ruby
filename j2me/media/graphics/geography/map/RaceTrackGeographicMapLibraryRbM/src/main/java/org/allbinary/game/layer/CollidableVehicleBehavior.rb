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

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

class CollidableVehicleBehavior < CollidableDestroyableDamageableBehavior
    attr_accessor :totalImpactVelocity, :halfImpactVelocityX, :halfImpactVelocityY

    def initialize_fields
        @totalImpactVelocity = 0
        @halfImpactVelocityX = 0
        @halfImpactVelocityY = 0
    end
    

    def initialize(collidable)
        super(collidable)
        initialize_fields
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
            collidableDestroyableDamageableLayer = (ownerLayer)
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(collidableInterfaceCompositeInterface)
        elsif collisionType == collisionTypeFactory.COLLISION
            super(ownerLayer, collidableInterfaceCompositeInterface)
        else
            self.collideVehicle(ownerLayer, collidableInterfaceCompositeInterface)
        end
    end
    

    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ForcedLogUtil.log("Don't Use Interface Version It Is Slower", self)
    end
    

    def collideVehicle(ownerLayer, vehiclePropertiesCompositeInterface)
        ownerVehicleLayerInterface = (ownerLayer)
        ownerVehicleProperties = ownerVehicleLayerInterface.getVehicleProperties()
        vehicleProperties = vehiclePropertiesCompositeInterface.getVehicleProperties()
        impactVelocityX = ownerVehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().getUnscaled() - vehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().getUnscaled()
        impactVelocityY = ownerVehicleProperties.getVelocityProperties().getVelocityYBasicDecimalP().getUnscaled() - vehicleProperties.getVelocityProperties().getVelocityYBasicDecimalP().getUnscaled()
        if impactVelocityX != 0
            @halfImpactVelocityX = (impactVelocityX >> 1)
            ownerVehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().addlong(@halfImpactVelocityX)
            vehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().addlong(@halfImpactVelocityX)
        else
        end
        if impactVelocityY != 0
            @halfImpactVelocityY = (impactVelocityY >> 1)
            ownerVehicleProperties.getVelocityProperties().getVelocityYBasicDecimalP().addlong(@halfImpactVelocityY)
            vehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().addlong(@halfImpactVelocityY)
        else
        end
        self.collideFriction(ownerVehicleLayerInterface)
        self.collideFriction(vehiclePropertiesCompositeInterface)
        @totalImpactVelocity = impactVelocityX + impactVelocityY
    end
    

    def collideFriction(vehiclePropertiesCompositeInterface)
        vehicleFrictionProperties = vehiclePropertiesCompositeInterface.getVehicleProperties().getVehicleFrictionProperties()
        vehiclePropertiesCompositeInterface.getVehicleProperties().getVehicleFrictionProperties().friction(vehiclePropertiesCompositeInterface.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties.getCrashFrictionNominator())
    end
end

require "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/VehicleFrictionProperties"
require "org/allbinary/game/layer/VehicleProperties"
require "org/allbinary/game/layer/VehiclePropertiesCompositeInterface"

