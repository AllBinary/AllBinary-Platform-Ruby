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
# package org.allbinary.vector


class VectorInfo
    attr_accessor :width, :height, :points, :totalFrames

    def initialize_fields
        @width = nil
        @height = nil
        @points = nil
        @totalFrames = nil
    end
    

    def initialize(width, height, points, totalFrames)
        initialize_fields
        @width = width
        @height = height
        @points = points
        @totalFrames = totalFrames
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
    

    def getPoints()
        return @points
    end
    

    def setPoints(points)
        @points = points
    end
    

    def getTotalFrames()
        return @totalFrames
    end
    

    def setTotalFrames(totalFrames)
        @totalFrames = totalFrames
    end
end

