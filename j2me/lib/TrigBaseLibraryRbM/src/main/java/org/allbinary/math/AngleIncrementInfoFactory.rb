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


class AngleIncrementInfoFactory
    attr_accessor :angleIncrementInfo

    def initialize_fields
        @angleIncrementInfo = Array.new((AngleFactory.getInstance().TOTAL_ANGLE).to_i, nil)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AngleIncrementInfoFactory.instance
    end
    

    def getAt(angleIncrement)
        halfAngleIncrement = (angleIncrement >> 1)
        angleIncrementInfo = nil
        angleIncrementInfoCanBeNull = @angleIncrementInfo[halfAngleIncrement]
        if angleIncrementInfoCanBeNull == nil
            angleIncrementInfo = AngleIncrementInfo.new(angleIncrement)
            @angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo
            return angleIncrementInfo
        else
            angleIncrementInfo = angleIncrementInfoCanBeNull
        end
        return angleIncrementInfo
    end

    def self.instance()
        AngleIncrementInfoFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AngleIncrementInfoFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AngleIncrementInfoFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AngleIncrementInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo"

begin
    AngleIncrementInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

