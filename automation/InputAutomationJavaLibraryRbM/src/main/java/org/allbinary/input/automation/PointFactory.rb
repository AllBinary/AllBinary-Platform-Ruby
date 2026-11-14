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
        PointFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@pointArray) ? @@pointArray : nil
    end

    def self.pointArray=(value)
        PointFactory.java_static_fields unless @java_static_fields_started
        @@pointArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@pointArray = Array.new(3000) { Array.new(3000, nil) }
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    PointFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

