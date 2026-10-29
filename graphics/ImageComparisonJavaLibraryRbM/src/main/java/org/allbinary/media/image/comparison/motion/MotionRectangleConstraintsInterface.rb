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

# require "java/awt"
# require "java/awt/image/BufferedImage"

module MotionRectangleConstraintsInterface
    

    def getMaxMotionRectangles()
        raise NotImplementedError
    end
    

    def getMinDimension()
        raise NotImplementedError
    end
    

    def getMinArea()
        raise NotImplementedError
    end
    

    def getMaxDimension()
        raise NotImplementedError
    end
    

    def isTooSmall(rectangle)
        raise NotImplementedError
    end
    

    def isAreaTooSmall(rectangle)
        raise NotImplementedError
    end
    

    def isTooBig(rectangle)
        raise NotImplementedError
    end
    

    # throws Exception
    def isValid(frame, bufferedImage, rectangle)
        raise NotImplementedError
    end
end

