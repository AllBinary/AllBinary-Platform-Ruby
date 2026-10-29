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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/threed/SWTJOGLProcessor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class MyFormUtil
    @@instance = MyFormUtil.new()
end

