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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerCircularPool"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickupLayerCircularStaticPool < ::Org::Allbinary::Layer::AllBinaryLayerCircularPool
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return PickupLayerCircularStaticPool::SINGLETON
    end
    

    # throws Exception
    def getInstanceXYZ(pickedUpLayerInterfaceFactoryInterface, x, y, z)
        pickupLayer = self.getNextInstance()
        pickupLayer.initXYZ(x, y, z)
        pickupLayer.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface())
        return pickupLayer
    end
    java_overload :getInstanceXYZ, 4

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, PickupLayerCircularStaticPool.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PickupLayerCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface" unless const_defined?(:PickedUpLayerInterface, false)
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false)
autoload :PickupLayer, "org/allbinary/game/layer/pickup/PickupLayer" unless const_defined?(:PickupLayer, false)

begin
    PickupLayerCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

