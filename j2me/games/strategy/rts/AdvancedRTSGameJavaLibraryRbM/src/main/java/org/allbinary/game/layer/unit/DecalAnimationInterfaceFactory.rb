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


module ::Org; module Allbinary; module Game; module Layer; module Unit

class DecalAnimationInterfaceFactory
    

    def self.getInstance()
        return DecalAnimationInterfaceFactory.instance
    end
    

    # throws Exception
    def getAnimationFactory(basicGameResources, basicColor)
        animationInterfaceFactoryInterface = nil
        if basicColor == ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED
            animationInterfaceFactoryInterface = ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(basicGameResources.RESOURCE)
        else
            animationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullRotationAnimationFactory.getFactoryInstance()
        end
        return animationInterfaceFactoryInterface
    end

    def self.instance()
        DecalAnimationInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DecalAnimationInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DecalAnimationInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DecalAnimationInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Resources; autoload :BasicGameResources, "org/allbinary/game/layer/resources/BasicGameResources" unless const_defined?(:BasicGameResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullRotationAnimationFactory, "org/allbinary/animation/NullRotationAnimationFactory" unless const_defined?(:NullRotationAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

begin
    DecalAnimationInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

