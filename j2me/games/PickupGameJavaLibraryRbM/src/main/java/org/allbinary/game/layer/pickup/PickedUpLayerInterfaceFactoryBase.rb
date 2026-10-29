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

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"

class PickedUpLayerInterfaceFactoryBase
    include PickedUpLayerInterfaceFactoryInterface
    

    def getIconLayer()
        raise RuntimeError.new()
    end
    

    def getAnimationInterface()
        raise RuntimeError.new()
    end
    

    def getPickedUpLayerType()
        raise RuntimeError.new()
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerType"

class PickedUpLayerInterfaceFactoryBase
    NULL_PICKED_UP_LAYER_FACTORY_BASE = PickedUpLayerInterfaceFactoryBase.new()
end

