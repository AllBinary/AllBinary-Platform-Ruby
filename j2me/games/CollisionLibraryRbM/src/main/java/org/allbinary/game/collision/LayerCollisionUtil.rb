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


class LayerCollisionUtil
    attr_accessor :collisionProcessor

    def initialize_fields
        @collisionProcessor = nil
    end
    

    def self.getInstance()
        return LayerCollisionUtil.instance
    end
    

    def initialize()
        initialize_fields
        features = Features.getInstance()
        gameFeatureFactory = GameFeatureFactory.getInstance()
        if OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)
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

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :Collision2DProcessor, "org/allbinary/game/collision/Collision2DProcessor"
autoload :CollisionProcessor, "org/allbinary/game/collision/CollisionProcessor"
autoload :CollisionThreedProcessor, "org/allbinary/game/collision/CollisionThreedProcessor"

begin
    LayerCollisionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

