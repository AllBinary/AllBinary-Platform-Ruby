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


class LayerDistanceUtil
    attr_accessor :mathUtil

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LayerDistanceUtil.instance
    end
    

    def getDistance(layerInterface, layerInterface2)
        dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth())
        dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight())
        return (@mathUtil.sqrt((dx * dx) + (dy * dy))).to_i
    end
    

    def getDistance3D(layerInterface, layerInterface2)
        dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth())
        dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight())
        dz = (layerInterface.getZP() + layerInterface.getHalfDepth()) - (layerInterface2.getZP() + layerInterface2.getHalfDepth())
        return (@mathUtil.sqrt((dx * dx) + (dy * dy) + (dz * dz))).to_i
    end
    

    def getDistanceAt(layerInterface, point)
        dx = layerInterface.getXP() - point.getX()
        dy = layerInterface.getYP() - point.getY()
        return (@mathUtil.sqrt((dx * dx) + (dy * dy))).to_i
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/math/MathUtil"

class LayerDistanceUtil
    @@instance = LayerDistanceUtil.new()
end

