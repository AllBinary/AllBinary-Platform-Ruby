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
# package org.allbinary.math


class RectangleCollisionPointUtil
    

    def initialize()
    end
    

    def self.allPointsInside(rectX1, rectY1, rectX2, rectY2, list)
        rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        point = nil
        index = list.size()
        while (index -= 1) >= 0
            point = list.objectArray[index]
            if !rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())
                return false
            end
        end
        return true
    end
    

    def self.allPointsInsideCell(rectX1, rectY1, rectX2, rectY2, list, xCellSize, yCellSize)
        rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        point = nil
        index = list.size()
        while (index -= 1) >= 0
            point = list.objectArray[index]
            if !rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX() * xCellSize, point.getY() * yCellSize)
                return false
            end
        end
        return true
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/math/RectangleCollisionUtil"

