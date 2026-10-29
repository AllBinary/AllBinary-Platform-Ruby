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
require "org/allbinary/input/automation/module/ImageComparatorConstraints"

class NoImageComparatorConstraints < ImageComparatorConstraints
    

    def initialize()
        super(1)
        self.setMaxNonMatchingPixelDeltas(2147483647)
    end
    

    def isColorAllowed(frame, point, color)
        return true
    end
    

    def isImageValid(bufferedImage)
        return true
    end
end

require "org/allbinary/graphics/GPoint"

