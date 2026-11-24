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


module ::Org; module Allbinary; module Game; module Layer; module Resources

class GameGraphicsResourceUtil
    attr_accessor :logUtil, :SPRITE, :QUARTER, :name

    def jfields_org_allbinary_game_layer_resources_GameGraphicsResourceUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @SPRITE = "_sprite"
        @QUARTER = "_quarter"
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def self.getInstance()
        if GameGraphicsResourceUtil.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            GameGraphicsResourceUtil.instance = GameGraphicsResourceUtil.new()
        end
        return GameGraphicsResourceUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_resources_GameGraphicsResourceUtil
        begin
            @name = self.getString()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def getString()
        graphicsFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GraphicsFeatureFactory.getInstance()
        graphicsFeature = graphicsFeatureFactory.NONE
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        graphicsFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GraphicsFeatureFactory.getInstance()
        stringBuffer.delete(0, stringBuffer.length())
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
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
        elsif ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed()
            stringBuffer.append(::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().OBJ_MODEL)
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GraphicsFeature, "org/allbinary/game/configuration/feature/GraphicsFeature" unless const_defined?(:GraphicsFeature, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GraphicsFeatureFactory, "org/allbinary/game/configuration/feature/GraphicsFeatureFactory" unless const_defined?(:GraphicsFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    GameGraphicsResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

