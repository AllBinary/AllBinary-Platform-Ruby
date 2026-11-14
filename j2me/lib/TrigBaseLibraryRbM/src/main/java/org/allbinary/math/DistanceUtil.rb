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
# package org.allbinary.math


class DistanceUtil
    attr_accessor :mathUtil

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return DistanceUtil.instance
    end
    

    def getDistance(x1, y1, x2, y2)
        dx = x1 - x2
        dy = y1 - y2
        return (@mathUtil.sqrt((dx * dx) + (dy * dy))).to_i
    end

    def self.instance()
        DistanceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DistanceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DistanceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DistanceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :MathUtil, "org/allbinary/logic/math/MathUtil"

begin
    DistanceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

