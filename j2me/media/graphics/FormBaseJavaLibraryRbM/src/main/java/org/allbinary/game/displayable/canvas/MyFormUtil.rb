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
# package org.allbinary.game.displayable.canvas


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class MyFormUtil
    attr_accessor :logUtil, :commonStrings, :popupMenuRectangle

    def jfields_org_allbinary_game_displayable_canvas_MyFormUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @popupMenuRectangle = ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON
    end

    def initialize
        jfields_org_allbinary_game_displayable_canvas_MyFormUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        isOpenGL = features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
        _TOTAL_CHAR_WIDTH = (::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3)
        width = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, _TOTAL_CHAR_WIDTH)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        if displayInfo.getLastHeight() < 320
            @popupMenuRectangle = ::Org::Allbinary::Graphics::Rectangle.new(pointFactory.createXY(0, 25), width, (font.getHeight() * 4) + 2)
        else
            @popupMenuRectangle = ::Org::Allbinary::Graphics::Rectangle.new(pointFactory.createXY(0, displayInfo.getLastHalfHeight() - 70), width, (font.getHeight() * 5))
        end
    end
    

    def getPopupMenuRectangle()
        return @popupMenuRectangle
    end

    def self.instance()
        MyFormUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MyFormUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MyFormUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MyFormUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor" unless const_defined?(:SWTJOGLProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    MyFormUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

