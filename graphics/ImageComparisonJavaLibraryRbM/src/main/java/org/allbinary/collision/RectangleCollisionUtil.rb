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
# package org.allbinary.collision

# require "java/awt/Rectangle"

module ::Org; module Allbinary; module Collision

class RectangleCollisionUtil
    

    def initialize()
    end
    

    def self.isCollision_j2_1(rectangle, point)
        if point.getX() > (((rectangle.x).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + rectangle.getWidth()) || point.getY() > (((rectangle.y).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + rectangle.getHeight()) || point.getX() < rectangle.x || point.getY() < rectangle.y
            return false
        else
            return true
        end
    end
    

    def self.isCollision_j2_2(rectangle1, rectangle2)
        return RectangleCollisionUtil.isCollision(rectangle1.x, rectangle1.y, rectangle1.x + rectangle1.width, rectangle1.y + rectangle1.height, rectangle2.x, rectangle2.y, rectangle2.x + rectangle2.width, rectangle2.y + rectangle2.height)
    end
    

    def self.isCollision_j8(rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2)
        if rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1
            return false
        else
            return true
        end
    end

    def self.isCollision(*java_overload_args)
        return isCollision_j2(*java_overload_args) if java_overload_args.length == 2
        return isCollision_j8(*java_overload_args) if java_overload_args.length == 8
        raise ArgumentError, "No method isCollision takes #{java_overload_args.length} arguments"
    end

    def self.isCollision_j2(*java_overload_args)
        return isCollision_j2_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Graphics::GPoint))
        return isCollision_j2_2(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end

end; end; end

