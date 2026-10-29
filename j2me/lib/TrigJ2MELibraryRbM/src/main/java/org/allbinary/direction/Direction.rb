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
        return defined?(@@directionArray) ? @@directionArray : nil
    end

    def self.directionArray=(value)
        @@directionArray = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class Direction
    @@directionArray = Array.new(13, nil)
end

