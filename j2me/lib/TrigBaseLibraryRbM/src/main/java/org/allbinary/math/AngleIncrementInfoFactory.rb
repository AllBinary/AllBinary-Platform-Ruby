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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleIncrementInfo"

class AngleIncrementInfoFactory
    @@instance = AngleIncrementInfoFactory.new()
end

