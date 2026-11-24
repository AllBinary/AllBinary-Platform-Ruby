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
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

module ::Org; module Allbinary; module Game; module Layer

class CollidableVehicleBehavior < ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableBehavior
    attr_accessor :totalImpactVelocity, :halfImpactVelocityX, :halfImpactVelocityY

    def jfields_org_allbinary_game_layer_CollidableVehicleBehavior
        @totalImpactVelocity = 0
        @halfImpactVelocityX = 0 unless instance_variable_defined?(:@halfImpactVelocityX)
        @halfImpactVelocityY = 0 unless instance_variable_defined?(:@halfImpactVelocityY)
    end
    

    def initialize(collidable)
        super(collidable)
        jfields_org_allbinary_game_layer_CollidableVehicleBehavior
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = ::Org::Allbinary::Game::Collision::CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
            collidableDestroyableDamageableLayer = (ownerLayer)
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(collidableInterfaceCompositeInterface)
        elsif collisionType == collisionTypeFactory.COLLISION
            CollidableVehicleBehavior.superclass.java_super_method(:collide, 2).bind(self).call(ownerLayer, collidableInterfaceCompositeInterface)
        else
            self.collideVehicle(ownerLayer, collidableInterfaceCompositeInterface)
        end
    end
    java_overload :collide, 2
    

    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Don't Use Interface Version It Is Slower", self)
    end
    java_overload :collideInterface, 2
    

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
    java_overload :collideVehicle, 2
    

    def collideFriction(vehiclePropertiesCompositeInterface)
        vehicleFrictionProperties = vehiclePropertiesCompositeInterface.getVehicleProperties().getVehicleFrictionProperties()
        vehiclePropertiesCompositeInterface.getVehicleProperties().getVehicleFrictionProperties().friction(vehiclePropertiesCompositeInterface.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties.getCrashFrictionNominator())
    end
    java_overload :collideFriction, 1
end

module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface" unless const_defined?(:PickedUpLayerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory" unless const_defined?(:CollisionTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false)
autoload :VehicleFrictionProperties, "org/allbinary/game/layer/VehicleFrictionProperties" unless const_defined?(:VehicleFrictionProperties, false)
autoload :VehicleProperties, "org/allbinary/game/layer/VehicleProperties" unless const_defined?(:VehicleProperties, false)
autoload :VehiclePropertiesCompositeInterface, "org/allbinary/game/layer/VehiclePropertiesCompositeInterface" unless const_defined?(:VehiclePropertiesCompositeInterface, false)

end; end; end; end

