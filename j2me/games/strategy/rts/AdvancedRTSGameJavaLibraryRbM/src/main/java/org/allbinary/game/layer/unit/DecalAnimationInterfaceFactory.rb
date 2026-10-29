# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.unit


class DecalAnimationInterfaceFactory
    

    def self.getInstance()
        return DecalAnimationInterfaceFactory.instance
    end
    

    # throws Exception
    def getAnimationFactory(basicGameResources, basicColor)
        animationInterfaceFactoryInterface = nil
        if basicColor == BasicColorFactory.getInstance().RED
            animationInterfaceFactoryInterface = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(basicGameResources.RESOURCE)
        else
            animationInterfaceFactoryInterface = NullRotationAnimationFactory.getFactoryInstance()
        end
        return animationInterfaceFactoryInterface
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/resources/BasicGameResources"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/animation/NullRotationAnimationFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class DecalAnimationInterfaceFactory
    @@instance = DecalAnimationInterfaceFactory.new()
end

