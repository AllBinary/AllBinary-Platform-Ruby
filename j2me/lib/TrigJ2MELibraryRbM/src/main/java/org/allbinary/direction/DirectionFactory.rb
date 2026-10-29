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


class DirectionFactory
    attr_accessor :NAME, :LEFT, :RIGHT, :DOWN, :UP, :UP_LEFT, :UP_RIGHT, :DOWN_LEFT, :DOWN_RIGHT, :NOT_BORDERED_WITH, :NO_DIRECTION, :TOP, :BOTTOM, :ALL_DIRECTION

    def initialize_fields
        @NAME = "DIRECTION"
        @LEFT = Direction.new(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1)
        @RIGHT = Direction.new(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0)
        @DOWN = Direction.new(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0)
        @UP = Direction.new(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0)
        @UP_LEFT = nil
        @UP_RIGHT = nil
        @DOWN_LEFT = nil
        @DOWN_RIGHT = nil
        @NOT_BORDERED_WITH = Direction.new("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
        @NO_DIRECTION = Direction.new("NO_DIRECTION", "NO_DIRECTION", 9, 0)
        @TOP = Direction.new("TOP", "TOP", 10, 0)
        @BOTTOM = Direction.new("BOTTOM", "BOTTOM", 11, 0)
        @ALL_DIRECTION = Direction.new("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
    end
    

    def self.getInstance()
        return DirectionFactory.instance
    end
    

    def initialize()
        initialize_fields
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        @UP_LEFT = Direction.new("UP LEFT", stringBuffer.append(@UP.getOtherName()).append(commonSeps.SPACE).append(@LEFT.getOtherName()).to_s, 4, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @UP_RIGHT = Direction.new("UP RIGHT", stringBuffer.append(@UP.getOtherName()).append(commonSeps.SPACE).append(@RIGHT.getOtherName()).to_s, 5, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @DOWN_LEFT = Direction.new("DOWN LEFT", stringBuffer.append(@DOWN.getOtherName()).append(commonSeps.SPACE).append(@LEFT.getOtherName()).to_s, 6, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @DOWN_RIGHT = Direction.new("DOWN RIGHT", stringBuffer.append(@DOWN.getOtherName()).append(commonSeps.SPACE).append(@RIGHT.getOtherName()).to_s, 7, 0)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/direction/Direction"

class DirectionFactory
    @@instance = DirectionFactory.new()
end

