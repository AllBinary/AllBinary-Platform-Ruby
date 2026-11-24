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
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactoryBase
    attr_accessor :pickedUpLayerType, :iconLayer, :animationInterface

    def jfields_org_allbinary_game_layer_pickup_PickedUpLayerInterfaceFactory
        @pickedUpLayerType = nil unless instance_variable_defined?(:@pickedUpLayerType)
        @iconLayer = nil unless instance_variable_defined?(:@iconLayer)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(pickeUpLayerType, iconLayer, animationInterface)
        super()
        jfields_org_allbinary_game_layer_pickup_PickedUpLayerInterfaceFactory
        @pickedUpLayerType = pickeUpLayerType
        @animationInterface = animationInterface
        @iconLayer = iconLayer
    end
    

    def getIconLayer()
        return @iconLayer
    end
    java_overload :getIconLayer, 0
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def getPickedUpLayerType()
        return @pickedUpLayerType
    end
    java_overload :getPickedUpLayerType, 0
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :IconLayer, "org/allbinary/game/layer/pickup/IconLayer" unless const_defined?(:IconLayer, false)
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)

end; end; end; end; end

