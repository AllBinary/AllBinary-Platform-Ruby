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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NONE, Orientation.new(0, 0, 0))
            const_set(:SINGLETON, Orientation.new(0, 0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Orientation"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NONE, :SINGLETON].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal"

begin
    Orientation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

