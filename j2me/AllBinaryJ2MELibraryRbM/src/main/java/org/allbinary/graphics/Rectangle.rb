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
# package org.allbinary.graphics


class Rectangle
    attr_accessor :point, :width, :height

    def initialize_fields
        @point = nil
        @width = nil
        @height = nil
    end
    

    def initialize(point, width, height)
        initialize_fields
        @point = point
        @width = width
        @height = height
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end
    

    def getMaxX()
        return @point.getX() + @width
    end
    

    def getMaxY()
        return @point.getY() + @height
    end
    

    def getWidth()
        return @width
    end
    

    def setWidth(width)
        @width = width
    end
    

    def getHeight()
        return @height
    end
    

    def setHeight(height)
        @height = height
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.getPoint().to_s)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
        stringBuffer.append(" MaxX: ")
        stringBuffer.appendint(self.getMaxX())
        stringBuffer.append(" MaxY: ")
        stringBuffer.appendint(self.getMaxY())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/graphics/GPoint"

