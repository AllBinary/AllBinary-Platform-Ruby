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
# package org.allbinary.media.image.comparison

# require "java/awt"
# require "java/awt/image/BufferedImage"

module ImageComparatorConstraintsInterface
    

    def getMaxNonMatchingPixelDeltas()
        raise NotImplementedError
    end
    

    def isCollisionWithAvoidRectangles(rectangle)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def isCollisionWithAvoidRectangles(point)
        raise NotImplementedError
    end
    

    def isColorAllowed(frame, point, color)
        raise NotImplementedError
    end
    

    # throws Exception
    def isImageValid(bufferedImage)
        raise NotImplementedError
    end
    

    def isFrameAllowed(frame)
        raise NotImplementedError
    end
end

require "org/allbinary/graphics/GPoint"

