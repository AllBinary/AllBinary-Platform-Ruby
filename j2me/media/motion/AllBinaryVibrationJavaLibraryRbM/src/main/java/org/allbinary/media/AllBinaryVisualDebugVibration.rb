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
# package org.allbinary.media

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/media/AllBinaryVibrationME"

class AllBinaryVisualDebugVibration < AllBinaryVibrationME
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :timeDelayHelper, :VIBRATING, :myFontProcessor, :anchor, :width

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(2147483647)
        @VIBRATING = "Vibrating"
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @anchor = Anchor::TOP_LEFT
        @width = 0
    end

    def initialize
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @width = font.stringWidth(@VIBRATING)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def vibrate(duration, type, volume)
        @timeDelayHelper.delay = duration
    end
    

    def paint(graphics)
        if @timeDelayHelper.isTimeTNT()
            @timeDelayHelper.delay = 2147483647
            @myFontProcessor.process(graphics)
            graphics.drawString(@VIBRATING, @displayInfoSingleton.getLastHalfWidth() - (@width >> 1), 0, @anchor)
        end
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/time/TimeDelayHelper"

