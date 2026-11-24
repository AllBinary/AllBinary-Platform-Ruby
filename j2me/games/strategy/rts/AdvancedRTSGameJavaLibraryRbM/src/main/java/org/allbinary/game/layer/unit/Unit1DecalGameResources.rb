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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/resources/BasicGameResources"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class Unit1DecalGameResources < ::Org::Allbinary::Game::Layer::Resources::BasicGameResources
    

    def self.getInstance()
        if Unit1DecalGameResources.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            Unit1DecalGameResources.instance = Unit1DecalGameResources.new()
        end
        return Unit1DecalGameResources.instance
    end
    

    def initialize()
        super()
        _ROOT = "/unit_decal"
        _SMALL = "_20_by_20.png"
        _MEDIUM = _SMALL
        _SIZE_FOUR = _SMALL
        _SIZE_FIVE = _SMALL
        _SIZE_SIX = _SMALL
        _SIZE = [_SMALL, _MEDIUM, _SIZE_FOUR, _SIZE_FIVE, _SIZE_SIX]
        Unit1DecalGameResources.superclass.java_super_method(:init, 2).bind(self).call(_ROOT, _SIZE)
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        Unit1DecalGameResources.superclass.java_super_method(:append, 2).bind(self).call(_ROOT, sizeString)
    end
    java_overload :append, 2
    

    # throws Exception
    def getString()
        if ::Org::Allbinary::AndroidUtil.isAndroid()
            return ::Org::Allbinary::Game::Layer::Resources::GameGraphicsResourceUtil.getInstance().getStringForFeature(::Org::Allbinary::Game::Configuration::Feature::GraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS)
        else
            return Unit1DecalGameResources.superclass.java_super_method(:getString, 0).bind(self).call()
        end
    end
    java_overload :getString, 0

    def self.instance()
        Unit1DecalGameResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        Unit1DecalGameResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Unit1DecalGameResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Resources; autoload :GameGraphicsResourceUtil, "org/allbinary/game/layer/resources/GameGraphicsResourceUtil" unless const_defined?(:GameGraphicsResourceUtil, false); end; end; end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GraphicsFeatureFactory, "org/allbinary/game/configuration/feature/GraphicsFeatureFactory" unless const_defined?(:GraphicsFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    Unit1DecalGameResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

