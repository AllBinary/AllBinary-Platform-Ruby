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

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullRotationAnimation"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullRotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ROTATION_ANIMATION_ARRAY, :NULL_ANIMATION
    class NullRotationAnimation2 < NullRotationAnimation
        

        def initialize()
            super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new(1, 250))
        end
        

        def paintXY(graphics, x, y)
        end
    end

    def initialize_fields
        @NULL_ROTATION_ANIMATION_ARRAY = Array.new(0, nil)
        @NULL_ANIMATION = NullRotationAnimation2.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullRotationAnimationFactory::NULL_ROTATION_ANIMATION_FACTORY
    end
    

    def getInstance(instanceId)
        return @NULL_ANIMATION
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return @NULL_ANIMATION
    end
    

    def setInitialScale(scaleProperties)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ROTATION_ANIMATION_FACTORY, NullRotationAnimationFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullRotationAnimationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ROTATION_ANIMATION_FACTORY].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :AngleInfo, "org/allbinary/math/AngleInfo"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior"
autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation"

begin
    NullRotationAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

