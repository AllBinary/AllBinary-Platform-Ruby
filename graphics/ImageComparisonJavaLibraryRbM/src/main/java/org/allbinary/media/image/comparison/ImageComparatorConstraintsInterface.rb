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

# require "java/awt/Rectangle"
# require "java/awt/Color"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image; module Comparison

module ImageComparatorConstraintsInterface
    

    def getMaxNonMatchingPixelDeltas()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isCollisionWithAvoidRectangles_j1_1(rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isCollisionWithAvoidRectangles_j1_2(point)
        return super if defined?(super)
        raise NotImplementedError
    end

    def isCollisionWithAvoidRectangles(*java_overload_args)
        return isCollisionWithAvoidRectangles_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method isCollisionWithAvoidRectangles takes #{java_overload_args.length} arguments"
    end

    def isCollisionWithAvoidRectangles_j1(*java_overload_args)
        return isCollisionWithAvoidRectangles_j1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return isCollisionWithAvoidRectangles_j1_2(*java_overload_args)
    end
    

    def isColorAllowed(frame, point, color)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isImageValid(bufferedImage)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isFrameAllowed(frame)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end

end; end; end; end; end

