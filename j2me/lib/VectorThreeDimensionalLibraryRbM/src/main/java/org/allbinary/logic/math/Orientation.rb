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
# package org.allbinary.logic.math


class Orientation
    attr_accessor :yaw, :pitch, :roll

    def initialize_fields
        @yaw = BasicDecimal.new(0)
        @pitch = BasicDecimal.new(0)
        @roll = BasicDecimal.new(0)
    end
    

    def self.getInstance(yaw, pitch, roll)
        Orientation::SINGLETON.yaw.setint(yaw)
        Orientation::SINGLETON.pitch.setint(pitch)
        Orientation::SINGLETON.roll.setint(roll)
        return Orientation::SINGLETON
    end
    

    def initialize(yaw, pitch, roll)
        initialize_fields
        @yaw.setint(yaw)
        @pitch.setint(pitch)
        @roll.setint(roll)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Y: ")
        stringBuffer.append(@yaw.to_s)
        stringBuffer.append(" P: ")
        stringBuffer.append(@pitch.to_s)
        stringBuffer.append(" R: ")
        stringBuffer.append(@roll.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/math/BasicDecimal"

class Orientation
    NONE = Orientation.new(0, 0, 0)
    SINGLETON = Orientation.new(0, 0, 0)
end

