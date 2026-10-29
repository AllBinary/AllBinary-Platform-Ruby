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
# package org.allbinary.media.graphics.geography.map

require "org/allbinary/graphics/CellPosition"

class GeographicMapCellPosition < CellPosition
    attr_accessor :point, :midPoint

    def initialize_fields
        @point = nil
        @midPoint = nil
    end
    

    def initialize(column, row, columns, rows, width, height)
        super(column, row, columns, rows)
        initialize_fields
        x = self.getColumn() * width
        y = self.getRow() * height
        pointFactory = PointFactory.getInstance()
        @point = pointFactory.createXY(x, y)
        @midPoint = pointFactory.createXY(x + (width >> 1), y + (height >> 1))
    end
    

    def getPoint()
        return @point
    end
    

    def getMidPoint()
        return @midPoint
    end
    

    def setMidPoint(midPoint)
        @midPoint = midPoint
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"

