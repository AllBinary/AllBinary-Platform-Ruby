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

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Health

class HealthBarAnimationInterfaceFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    include ::Org::Allbinary::Animation::ProceduralAnimationInterfaceFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstanceByLocation(layerInterface, location)
        return HealthBarThreedAnimation.new(layerInterface, location)
    end
    java_overload :getInstanceByLocation, 2
    

    # throws Exception
    def getInstance(instanceId)
        return nil
    end
    java_overload :getInstance, 1
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return nil
    end
    java_overload :getInstanceAnimation, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :HealthBarAnimation, "org/allbinary/game/health/HealthBarAnimation" unless const_defined?(:HealthBarAnimation, false)
autoload :HealthBarThreedAnimation, "org/allbinary/game/health/HealthBarThreedAnimation" unless const_defined?(:HealthBarThreedAnimation, false)

end; end; end; end

