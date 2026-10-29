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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/MyFontProcessor"

class UpdateMyFontProcessor < MyFontProcessor
    attr_accessor :updateMeasurementProcessor

    def initialize_fields
        @updateMeasurementProcessor = nil
    end
    

    def initialize(keyValueDrawCharArray)
        super()
        initialize_fields
        @updateMeasurementProcessor = keyValueDrawCharArray
    end
    

    def process(graphics)
        @updateMeasurementProcessor.updateMeasurement(graphics)
    end
end

require "org/allbinary/graphics/font/UpdateMyFontInterface"

