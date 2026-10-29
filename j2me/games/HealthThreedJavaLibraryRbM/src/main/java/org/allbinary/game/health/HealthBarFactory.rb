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


class HealthBarFactory
    

    # throws Exception
    def getInstance(layerInterface, healthInterface, location, direction)
        if OpenGLFeatureUtil.getInstance().isAnyThreed()
            featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
            healthBarAnimationInterfaceFactory = featuredAnimationInterfaceFactoryInterfaceFactory.get(Health::NAME)
            return HealthBar.new(layerInterface, healthInterface, healthBarAnimationInterfaceFactory.getInstanceByLocation(layerInterface, location), direction)
        else
            return HealthBar.new(layerInterface, healthInterface, HealthBarTwodAnimation.new(layerInterface, location), direction)
        end
    end
end

require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/health/HealthBar"
require "org/allbinary/game/health/HealthBarAnimationInterfaceFactory"
require "org/allbinary/game/health/HealthBarTwodAnimation"

