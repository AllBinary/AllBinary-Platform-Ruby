# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickedUpLayerInterfaceFactoryBase
    include PickedUpLayerInterfaceFactoryInterface
    

    def getIconLayer()
        raise RuntimeError.new()
    end
    java_overload :getIconLayer, 0
    

    def getAnimationInterface()
        raise RuntimeError.new()
    end
    java_overload :getAnimationInterface, 0
    

    def getPickedUpLayerType()
        raise RuntimeError.new()
    end
    java_overload :getPickedUpLayerType, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PICKED_UP_LAYER_FACTORY_BASE, PickedUpLayerInterfaceFactoryBase.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PickedUpLayerInterfaceFactoryBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PICKED_UP_LAYER_FACTORY_BASE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)

begin
    PickedUpLayerInterfaceFactoryBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

