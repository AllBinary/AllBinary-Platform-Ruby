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
# package org.allbinary.game.collision


module ::Org; module Allbinary; module Game; module Collision

class LayerCollisionUtil
    attr_accessor :collisionProcessor

    def jfields_org_allbinary_game_collision_LayerCollisionUtil
        @collisionProcessor = nil unless instance_variable_defined?(:@collisionProcessor)
    end
    

    def self.getInstance()
        return LayerCollisionUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_game_collision_LayerCollisionUtil
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        if ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)
            @collisionProcessor = CollisionThreedProcessor.new()
        else
            @collisionProcessor = Collision2DProcessor.new()
        end
    end
    

    def isCollision(myLayer, myLayer2)
        return @collisionProcessor.isCollision(myLayer, myLayer2)
    end

    def self.instance()
        LayerCollisionUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerCollisionUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerCollisionUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerCollisionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :Collision2DProcessor, "org/allbinary/game/collision/Collision2DProcessor" unless const_defined?(:Collision2DProcessor, false)
autoload :CollisionProcessor, "org/allbinary/game/collision/CollisionProcessor" unless const_defined?(:CollisionProcessor, false)
autoload :CollisionThreedProcessor, "org/allbinary/game/collision/CollisionThreedProcessor" unless const_defined?(:CollisionThreedProcessor, false)

begin
    LayerCollisionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

