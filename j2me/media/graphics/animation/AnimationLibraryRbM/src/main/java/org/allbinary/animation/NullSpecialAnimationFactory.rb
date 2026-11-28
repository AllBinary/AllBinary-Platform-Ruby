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

class NullSpecialAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    

    def initialize()
    end
    

    def self.getFactoryInstance()
        return NULL_SPECIAL_ANIMATION_FACTORY
    end
    

    # throws Exception
    def getInstance(instanceId)
        return ::Org::Allbinary::Animation::Special::SpecialAnimation.getInstance()
    end
    java_overload :getInstance, 1
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return ::Org::Allbinary::Animation::Special::SpecialAnimation.getInstance()
    end
    java_overload :getInstanceAnimation, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_SPECIAL_ANIMATION_FACTORY, NullSpecialAnimationFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullSpecialAnimationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_SPECIAL_ANIMATION_FACTORY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; module Special; autoload :SpecialAnimation, "org/allbinary/animation/special/SpecialAnimation" unless const_defined?(:SpecialAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)

begin
    NullSpecialAnimationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

