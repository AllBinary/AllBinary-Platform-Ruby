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

class NullIndexedAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION

    def jfields_org_allbinary_animation_NullIndexedAnimationFactory
        @NULL_ANIMATION = NullIndexedAnimationInner.new()
    end
    

    def initialize()
        jfields_org_allbinary_animation_NullIndexedAnimationFactory
    end
    

    def self.getFactoryInstance()
        return NULL_INDEXED_ANIMATION_FACTORY
    end
    

    # throws Exception
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

module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false)
autoload :NullIndexedAnimationInner, "org/allbinary/animation/NullIndexedAnimationInner" unless const_defined?(:NullIndexedAnimationInner, false)

begin
    NullIndexedAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

