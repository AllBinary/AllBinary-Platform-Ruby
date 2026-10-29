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

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase"

class PickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactoryBase
    attr_accessor :pickedUpLayerType, :iconLayer, :animationInterface

    def initialize_fields
        @pickedUpLayerType = nil
        @iconLayer = nil
        @animationInterface = nil
    end
    

    def initialize(pickeUpLayerType, iconLayer, animationInterface)
        super()
        initialize_fields
        @pickedUpLayerType = pickeUpLayerType
        @animationInterface = animationInterface
        @iconLayer = iconLayer
    end
    

    def getIconLayer()
        return @iconLayer
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def getPickedUpLayerType()
        return @pickedUpLayerType
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/layer/pickup/IconLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerType"

