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
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION, :EMPTY_ARRAY

    def initialize_fields
        @NULL_ANIMATION = Class.new(Animation.is_a?(Class) ? Animation : Object) do
        include(Animation) unless Animation.is_a?(Class)
        

        def paintXY(graphics, x, y)
        end
    end.new()
        @EMPTY_ARRAY = Array.new(0, nil)
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullAnimationFactory::NULL_ANIMATION_FACTORY
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
            const_set(:NULL_NOT_FOR_USE_ANIMATION_FACTORY, NullAnimationFactory.new())
            const_set(:NULL_ANIMATION_FACTORY, NullAnimationFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullAnimationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_NOT_FOR_USE_ANIMATION_FACTORY, :NULL_ANIMATION_FACTORY].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :Animation, "org/allbinary/animation/Animation"

begin
    NullAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

