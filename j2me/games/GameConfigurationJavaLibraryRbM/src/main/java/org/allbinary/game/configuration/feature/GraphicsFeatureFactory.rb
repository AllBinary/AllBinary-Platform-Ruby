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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/configuration/feature/GraphicsFeature"

class GraphicsFeatureFactory
    @@instance = GraphicsFeatureFactory.new()
end

