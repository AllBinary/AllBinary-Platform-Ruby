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


class GraphicsFeatureFactory
    attr_accessor :NONE, :TRANSPARENT_IMAGE_CREATION, :IMAGE_GRAPHICS, :IMAGE_ROTATION_ON_THE_FLY, :IMAGE_TO_ARRAY_GRAPHICS, :SPRITE_QUARTER_ROTATION_GRAPHICS, :SPRITE_FULL_GRAPHICS, :VECTOR_GRAPHICS, :VECTOR_TO_IMAGE_GRAPHICS

    def initialize_fields
        @NONE = GraphicsFeature.new(StringUtil.getInstance().NULL_STRING)
        @TRANSPARENT_IMAGE_CREATION = GraphicsFeature.new("Transparent Image Creation")
        @IMAGE_GRAPHICS = GraphicsFeature.new("Image Graphics")
        @IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature.new("Image Rotated On The Fly")
        @IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature.new("Image To Array Graphics")
        @SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature.new("Sprite Quarter Rotation Graphics")
        @SPRITE_FULL_GRAPHICS = GraphicsFeature.new("Sprite Full Rotation Graphics")
        @VECTOR_GRAPHICS = GraphicsFeature.new("BasicArrayList Graphics")
        @VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature.new("BasicArrayList To Image Graphics")
    end
    

    def self.getInstance()
        return GraphicsFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        GraphicsFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GraphicsFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GraphicsFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GraphicsFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :GraphicsFeature, "org/allbinary/game/configuration/feature/GraphicsFeature"

begin
    GraphicsFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

