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

class NullAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION, :EMPTY_ARRAY

    def jfields_org_allbinary_animation_NullAnimationFactory
        @NULL_ANIMATION = Class.new(Animation.is_a?(Class) ? Animation : Object) do
        include(Animation) unless Animation.is_a?(Class)
        

        def paintXY(graphics, x, y)
        end
        java_overload :paintXY, 3
    end.new()
        @EMPTY_ARRAY = Array.new(0, nil)
    end
    

    def initialize()
        jfields_org_allbinary_animation_NullAnimationFactory
    end
    

    def self.getFactoryInstance()
        return NULL_ANIMATION_FACTORY
    end
    

    def getInstance(instanceId)
        return @NULL_ANIMATION
    end
    java_overload :getInstance, 1
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return @NULL_ANIMATION
    end
    java_overload :getInstanceAnimation, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1

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

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)

begin
    NullAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

