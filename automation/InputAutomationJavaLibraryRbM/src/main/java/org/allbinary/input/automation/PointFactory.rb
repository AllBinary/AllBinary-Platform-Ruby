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
# package org.allbinary.input.automation

# require "java/awt"

class PointFactory
    

    def initialize()
    end
    

    def self.getInstance(x, y)
        point = PointFactory.pointArray[x][y]
        if point == nil
            PointFactory.pointArray[x][y] = Point.new(x, y)
            point = PointFactory.pointArray[x][y]
        end
        return point
    end

    def self.pointArray()
        return defined?(@@pointArray) ? @@pointArray : nil
    end

    def self.pointArray=(value)
        @@pointArray = value
    end
end

class PointFactory
    @@pointArray = Array.new(3000) { Array.new(3000, nil) }
end

