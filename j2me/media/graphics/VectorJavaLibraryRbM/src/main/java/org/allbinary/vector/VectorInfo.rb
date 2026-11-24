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


module ::Org; module Allbinary; module Vector

class VectorInfo
    attr_accessor :width, :height, :points, :totalFrames

    def jfields_org_allbinary_vector_VectorInfo
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
        @points = nil unless instance_variable_defined?(:@points)
        @totalFrames = nil unless instance_variable_defined?(:@totalFrames)
    end
    

    def initialize(width, height, points, totalFrames)
        jfields_org_allbinary_vector_VectorInfo
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

end; end; end

