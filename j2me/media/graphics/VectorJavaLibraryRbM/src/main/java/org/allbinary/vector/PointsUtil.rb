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
        PointsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PointsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PointsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    PointsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

