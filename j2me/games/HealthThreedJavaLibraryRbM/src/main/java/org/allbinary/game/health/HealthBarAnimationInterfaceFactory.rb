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
# package org.allbinary.game.health

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class HealthBarAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstanceByLocation(layerInterface, location)
        return HealthBarThreedAnimation.new(layerInterface, location)
    end
    

    # throws Exception
    def getInstance(instanceId)
        return nil
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return nil
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/game/health/HealthBarAnimation"
require "org/allbinary/game/health/HealthBarThreedAnimation"

