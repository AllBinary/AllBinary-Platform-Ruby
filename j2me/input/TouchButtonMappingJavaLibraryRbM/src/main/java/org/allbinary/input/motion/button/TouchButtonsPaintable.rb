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
# package org.allbinary.input.motion.button

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class TouchButtonsPaintable < Paintable
    attr_accessor :foregroundBasicColor, :foregroundColor, :basicSetColorUtil, :touchButtonFactory

    def initialize_fields
        @foregroundBasicColor = nil
        @foregroundColor = nil
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @touchButtonFactory = TouchButtonFactory.getInstance()
    end
    

    def initialize(basicColor)
        super()
        initialize_fields
        @foregroundBasicColor = basicColor
        @foregroundColor = basicColor.to_i
    end
    

    def paint(graphics)
        list = @touchButtonFactory.getList()
        @basicSetColorUtil.setBasicColorP3(graphics, @foregroundBasicColor, @foregroundColor)
        touchButton = nil
        index = list.size()
        while (index -= 1) >= 0
            touchButton = list.objectArray[index]
            touchButton.paint(graphics)
        end
        index = list.size()
        while (index -= 1) >= 0
            touchButton = list.objectArray[index]
            touchButton.paintHint(graphics)
        end
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/input/motion/button/TouchButton"
require "org/allbinary/input/motion/button/TouchButtonFactory"

