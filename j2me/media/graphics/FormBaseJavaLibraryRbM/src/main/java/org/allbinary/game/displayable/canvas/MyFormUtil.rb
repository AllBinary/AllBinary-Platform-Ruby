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


class MyFormUtil
    attr_accessor :logUtil, :commonStrings, :popupMenuRectangle

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @popupMenuRectangle = RectangleFactory::SINGLETON
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MyFormUtil.instance
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        displayInfo = DisplayInfoSingleton.getInstance()
        features = Features.getInstance()
        isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        _TOTAL_CHAR_WIDTH = (SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3)
        width = MyFontProcessor.defaultStringWidth(font, _TOTAL_CHAR_WIDTH)
        pointFactory = PointFactory.getInstance()
        if displayInfo.getLastHeight() < 320
            @popupMenuRectangle = Rectangle.new(pointFactory.createXY(0, 25), width, (font.getHeight() * 4) + 2)
        else
            @popupMenuRectangle = Rectangle.new(pointFactory.createXY(0, displayInfo.getLastHalfHeight() - 70), width, (font.getHeight() * 5))
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

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    MyFormUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

