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
# package org.allbinary.direction


class Direction
    attr_accessor :name, :otherName, :value, :frameFactor

    def initialize_fields
        @name = nil
        @otherName = nil
        @value = nil
        @frameFactor = nil
    end
    

    def initialize(name, otherName, value, frameFactor)
        initialize_fields
        @name = name
        @otherName = otherName
        @value = value
        @frameFactor = frameFactor
        Direction.directionArray[value] = self
    end
    

    def self.getInstance(direction)
        return Direction.directionArray[direction]
    end
    

    def getValue()
        return @value
    end
    

    def getFrameFactor()
        return @frameFactor
    end
    

    def getOtherName()
        return @otherName
    end
    

    def getName()
        return @name
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Direction: ")
        stringBuffer.append(self.getName())
        stringBuffer.append(" Or: ")
        stringBuffer.append(self.getOtherName())
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(@value)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.directionArray()
        Direction.java_static_fields unless @java_static_fields_started
        return defined?(@@directionArray) ? @@directionArray : nil
    end

    def self.directionArray=(value)
        Direction.java_static_fields unless @java_static_fields_started
        @@directionArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@directionArray = Array.new(13, nil)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Direction"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    Direction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

