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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/collision/Collision2DProcessor"
require "org/allbinary/game/collision/CollisionProcessor"
require "org/allbinary/game/collision/CollisionThreedProcessor"

class LayerCollisionUtil
    @@instance = LayerCollisionUtil.new()
end

