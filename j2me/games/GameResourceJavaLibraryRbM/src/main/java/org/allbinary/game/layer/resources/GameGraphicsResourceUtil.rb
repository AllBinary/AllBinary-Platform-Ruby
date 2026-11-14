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
# package org.allbinary.game.layer.resources


class GameGraphicsResourceUtil
    attr_accessor :logUtil, :SPRITE, :QUARTER, :name

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SPRITE = "_sprite"
        @QUARTER = "_quarter"
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    def self.getInstance()
        if GameGraphicsResourceUtil.instance == NullUtil.getInstance().NULL_OBJECT
            GameGraphicsResourceUtil.instance = GameGraphicsResourceUtil.new()
        end
        return GameGraphicsResourceUtil.instance
    end
    

    def initialize()
        initialize_fields
        begin
            @name = self.getString()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def getString()
        graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        graphicsFeature = graphicsFeatureFactory.NONE
        features = Features.getInstance()
        if features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS
        elsif features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
        elsif features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
        elsif features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
        end
        return self.getStringForFeature(graphicsFeature)
    end
    

    # throws Exception
    def getStringForFeature(graphicsFeature)
        stringBuffer = StringMaker.new()
        graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        stringBuffer.delete(0, stringBuffer.length())
        features = Features.getInstance()
        if features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)
        elsif features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)
            if graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
            elsif graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
                stringBuffer.append(@SPRITE)
            elsif graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
                stringBuffer.append(@QUARTER)
                stringBuffer.append(@SPRITE)
            else
                raise StandardError.new("None/Unknown Sub Image Resource Type Specified")
            end
        elsif OpenGLFeatureUtil.getInstance().isAnyThreed()
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL)
        else
            raise StandardError.new("None/Unknown Main Image Resource Type Specified")
        end
        return stringBuffer.to_s
    end
    

    def getName()
        return @name
    end

    def self.instance()
        GameGraphicsResourceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameGraphicsResourceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameGraphicsResourceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GraphicsFeature, "org/allbinary/game/configuration/feature/GraphicsFeature"
autoload :GraphicsFeatureFactory, "org/allbinary/game/configuration/feature/GraphicsFeatureFactory"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    GameGraphicsResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

