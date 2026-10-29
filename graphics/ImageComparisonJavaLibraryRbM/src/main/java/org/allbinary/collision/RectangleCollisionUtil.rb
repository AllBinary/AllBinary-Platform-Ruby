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

# require "java/awt"

class RectangleCollisionUtil
    

    def initialize()
    end
    

    def self.isCollision(rectangle, point)
        if point.getX() > ((rectangle.x).to_i + rectangle.getWidth()) || point.getY() > ((rectangle.y).to_i + rectangle.getHeight()) || point.getX() < rectangle.x || point.getY() < rectangle.y
            return false
        else
            return true
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.isCollision(rectangle1, rectangle2)
        return RectangleCollisionUtil.isCollision(rectangle1.x, rectangle1.y, rectangle1.x + rectangle1.width, rectangle1.y + rectangle1.height, rectangle2.x, rectangle2.y, rectangle2.x + rectangle2.width, rectangle2.y + rectangle2.height)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.isCollision(rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2)
        if rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1
            return false
        else
            return true
        end
    end
end

require "org/allbinary/graphics/GPoint"

