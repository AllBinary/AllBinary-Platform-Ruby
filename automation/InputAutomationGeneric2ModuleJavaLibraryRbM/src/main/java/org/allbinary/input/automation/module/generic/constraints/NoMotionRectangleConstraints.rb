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
# package org.allbinary.input.automation.module.generic.constraints

# require "java/awt"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/MotionRectangleConstraints"

class NoMotionRectangleConstraints < MotionRectangleConstraints
    

    def initialize()
        super()
        self.setMinDimension(Dimension.new(0, 0))
        self.setMinArea(0)
        self.setMaxDimension(Dimension.new(2147483647, 2147483647))
        self.setMaxMotionRectangles(2147483647)
    end
    

    def isValid(frame, bufferedImage, rectangle)
        return true
    end
end

