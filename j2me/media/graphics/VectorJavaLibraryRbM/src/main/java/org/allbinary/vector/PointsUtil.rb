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


class PointsUtil
    

    def self.getInstance()
        return PointsUtil.instance
    end
    

    def adjustXY(points, x, y)
        size = points.length
        newPoints = Array.new(size) { Array.new(0) { Array.new(0, 0) } }
        (0...size).each do |index|
            size2 = points[index].length
            newPoints[index] = Array.new(size2) { Array.new(2, 0) }
            (0...size2).each do |index2|
                if points[index][index2][0] != 1000
                    newPoints[index][index2][0] = points[index][index2][0] + x
                    newPoints[index][index2][1] = points[index][index2][1] + y
                else
                    newPoints[index][index2][0] = 1000
                    newPoints[index][index2][1] = 1000
                end
            end
        end
        return newPoints
    end
    

    def adjust(points, both)
        return self.adjust(points, both, both)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def adjust(points, x, y)
        newPoints = Array.new(points.length) { Array.new(2, 0) }
        (0...points.length).each do |index2|
            if points[index2][0] != 1000
                newPoints[index2][0] = points[index2][0] + x
                newPoints[index2][1] = points[index2][1] + y
            else
                newPoints[index2][0] = 1000
                newPoints[index2][1] = 1000
            end
        end
        return newPoints
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class PointsUtil
    @@instance = PointsUtil.new()
end

