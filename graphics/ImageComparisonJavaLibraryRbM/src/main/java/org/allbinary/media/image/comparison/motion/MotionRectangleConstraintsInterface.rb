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

# require "java/awt/Dimension"
# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

module MotionRectangleConstraintsInterface
    

    def getMaxMotionRectangles()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMinDimension()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMinArea()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMaxDimension()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isTooSmall(rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isAreaTooSmall(rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isTooBig(rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isValid(frame, bufferedImage, rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
end

end; end; end; end; end; end

