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

class PointHelper
    

    def initialize()
    end
    

    def self.getCenterPoint(rectangle)
        x = rectangle.getX() + rectangle.getWidth() / PointHelper.two
        y = rectangle.getY() + rectangle.getHeight() / PointHelper.two
        return PointFactory.getInstance((x).to_i, (y).to_i)
    end

    def self.two()
        PointHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@two) ? @@two : nil
    end

    def self.two=(value)
        PointHelper.java_static_fields unless @java_static_fields_started
        @@two = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@two = 2.0
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PointFactory, "org/allbinary/input/automation/PointFactory"

begin
    PointHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

