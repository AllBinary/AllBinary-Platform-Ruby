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
require "org/allbinary/animation/NullIndexedAnimation"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullIndexedAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION
    class NullIndexedAnimationInner < NullIndexedAnimation
        

        def initialize()
            super(IndexedAnimationBehavior.new(1, 250))
        end
        

        def paintXY(graphics, x, y)
        end
    end

    def initialize_fields
        @NULL_ANIMATION = NullIndexedAnimationInner.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullIndexedAnimationFactory::NULL_INDEXED_ANIMATION_FACTORY
    end
    

    # throws Exception
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
            const_set(:NULL_INDEXED_ANIMATION_ARRAY, Array.new(0, nil))
            const_set(:NULL_INDEXED_ANIMATION_FACTORY, NullIndexedAnimationFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullIndexedAnimationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_INDEXED_ANIMATION_ARRAY, :NULL_INDEXED_ANIMATION_FACTORY].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior"

begin
    NullIndexedAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

