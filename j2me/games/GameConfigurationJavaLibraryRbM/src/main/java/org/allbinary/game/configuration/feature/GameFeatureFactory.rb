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
# package org.allbinary.game.configuration.feature


class GameFeatureFactory
    attr_accessor :SOUND, :MUSIC, :SCREEN_SHAKE, :POST_IMAGE_LOADING_MODIFICATION, :HEALTH_BARS, :DAMAGE_FLOATERS, :GAME_INPUT_LAYER_PROCESSOR, :ARTIFICIAL_INTELLEGENCE_PROCESSOR, :COLLIDABLE_INTERFACE_LAYER_PROCESSOR, :TICKABLE_LAYER_PROCESSOR, :CHEATING, :DROPPED_ITEMS, :DROPPED_ITEMS_FROM_DEATH, :TEST_DESTROYED_LAYER_PROCESSOR, :COLLISIONS_WITH_SOURCE, :COLLISIONS_FORCED_TWO_DIMENSIONAL

    def initialize_fields
        @SOUND = GameFeature.new("Sound")
        @MUSIC = GameFeature.new("Music")
        @SCREEN_SHAKE = Feature.new("Screen Shake")
        @POST_IMAGE_LOADING_MODIFICATION = Feature.new("Post Image Loading Modification (Scaling, Rotation, or Other)")
        @HEALTH_BARS = GameFeature.new("Health Bars")
        @DAMAGE_FLOATERS = GameFeature.new("Damage Floaters")
        @GAME_INPUT_LAYER_PROCESSOR = GameFeature.new("Game Input Layer Processor")
        @ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature.new("Artificial Intelligence Layer Processor")
        @COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature.new("Collidable Interface Layer Processor")
        @TICKABLE_LAYER_PROCESSOR = GameFeature.new("Tickable Layer Processor")
        @CHEATING = GameFeature.new("Cheating")
        @DROPPED_ITEMS = GameFeature.new("Drops")
        @DROPPED_ITEMS_FROM_DEATH = GameFeature.new("Drops from Dead")
        @TEST_DESTROYED_LAYER_PROCESSOR = GameFeature.new("Destroyed Layer Processor")
        @COLLISIONS_WITH_SOURCE = GameFeature.new("Allow Collisions With Source")
        @COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature.new("Collisions Forced Two Dimensional")
    end
    

    def self.getInstance()
        return GameFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        GameFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Feature, "org/allbinary/game/configuration/feature/Feature"
autoload :GameFeature, "org/allbinary/game/configuration/feature/GameFeature"

begin
    GameFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

