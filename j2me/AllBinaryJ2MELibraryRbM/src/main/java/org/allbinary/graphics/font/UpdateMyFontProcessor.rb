# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.font

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/MyFontProcessor"

module ::Org; module Allbinary; module Graphics; module Font

class UpdateMyFontProcessor < MyFontProcessor
    attr_accessor :updateMeasurementProcessor

    def jfields_org_allbinary_graphics_font_UpdateMyFontProcessor
        @updateMeasurementProcessor = nil unless instance_variable_defined?(:@updateMeasurementProcessor)
    end
    

    def initialize(keyValueDrawCharArray)
        super()
        jfields_org_allbinary_graphics_font_UpdateMyFontProcessor
        @updateMeasurementProcessor = keyValueDrawCharArray
    end
    

    def process(graphics)
        @updateMeasurementProcessor.updateMeasurement(graphics)
    end
    java_overload :process, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :UpdateMyFontInterface, "org/allbinary/graphics/font/UpdateMyFontInterface" unless const_defined?(:UpdateMyFontInterface, false)

end; end; end; end

