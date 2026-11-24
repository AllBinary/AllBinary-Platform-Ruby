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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation

class RotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :totalAngle, :angleIncrement

    def jfields_org_allbinary_animation_RotationAnimationFactory
        @totalAngle = nil unless instance_variable_defined?(:@totalAngle)
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
    end
    

    def self.createFactory()
        totalAngle = ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE
        return RotationAnimationFactory.new(totalAngle, (((((totalAngle / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768))
    end
    

    def initialize(totalAngle, angleIncrement)
        jfields_org_allbinary_animation_RotationAnimationFactory
        @totalAngle = totalAngle
        @angleIncrement = angleIncrement
    end
    

    # throws Exception
    def getInstance(instanceId)
        return NullRotationAnimation.createTotalAngle(::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    java_overload :getInstance, 1
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return NullRotationAnimation.createTotalAngle(::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    java_overload :getInstanceAnimation, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)
autoload :NullRotationAnimation, "org/allbinary/animation/NullRotationAnimation" unless const_defined?(:NullRotationAnimation, false)

end; end; end

