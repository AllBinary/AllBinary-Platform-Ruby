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
# package org.allbinary.media.image.comparison.motion

# require "java/awt/Rectangle"
require "java/lang/Cloneable"

class MotionRectangle
    include Cloneable
    attr_accessor :rectangle, :pixelDeltaVector

    def initialize_fields
        @rectangle = nil
        @pixelDeltaVector = nil
    end
    

    def initialize(rectangle)
        initialize_fields
        self.setRectangle(rectangle)
        self.setPixelDeltaVector(BasicArrayListD.new())
    end
    

    def getRectangle()
        return @rectangle
    end
    

    def setRectangle(rectangle)
        @rectangle = rectangle
    end
    

    def getPixelDeltaVector()
        return @pixelDeltaVector
    end
    

    def setPixelDeltaVector(pixelDeltaVector)
        @pixelDeltaVector = pixelDeltaVector
    end
    

    def clone()
        motionRectangle = MotionRectangle.new(self.getRectangle().clone())
        motionRectangle.setPixelDeltaVector(self.getPixelDeltaVector().clone())
        return motionRectangle
    end
end

require "java/util/Vector"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

