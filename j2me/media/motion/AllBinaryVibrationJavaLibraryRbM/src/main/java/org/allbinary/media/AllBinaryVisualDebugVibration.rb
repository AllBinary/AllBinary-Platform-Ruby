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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/media/AllBinaryVibrationME"

module ::Org; module Allbinary; module Media

class AllBinaryVisualDebugVibration < AllBinaryVibrationME
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :timeDelayHelper, :VIBRATING, :myFontProcessor, :anchor, :width

    def jfields_org_allbinary_media_AllBinaryVisualDebugVibration
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(2147483647)
        @VIBRATING = "Vibrating"
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @width = 0 unless instance_variable_defined?(:@width)
    end

    def initialize
        super()
        jfields_org_allbinary_media_AllBinaryVisualDebugVibration
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @width = font.stringWidth(@VIBRATING)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def vibrate(duration, type, volume)
        @timeDelayHelper.delay = duration
    end
    java_overload :vibrate, 3
    

    def paint(graphics)
        if @timeDelayHelper.isTimeTNT()
            @timeDelayHelper.delay = 2147483647
            @myFontProcessor.process(graphics)
            graphics.drawString(@VIBRATING, @displayInfoSingleton.getLastHalfWidth() - (@width >> 1), 0, @anchor)
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end

