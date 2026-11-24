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


module ::Org; module Allbinary; module MathPackage

class LayerDistanceUtil
    attr_accessor :mathUtil

    def jfields_org_allbinary_math_LayerDistanceUtil
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_math_LayerDistanceUtil
    end
    

    def self.getInstance()
        return LayerDistanceUtil.instance
    end
    

    def getDistance(layerInterface, layerInterface2)
        dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth())
        dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight())
        return ((@mathUtil.sqrt((dx * dx) + (dy * dy))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    

    def getDistance3D(layerInterface, layerInterface2)
        dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth())
        dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight())
        dz = (layerInterface.getZP() + layerInterface.getHalfDepth()) - (layerInterface2.getZP() + layerInterface2.getHalfDepth())
        return ((@mathUtil.sqrt((dx * dx) + (dy * dy) + (dz * dz))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    

    def getDistanceAt(layerInterface, point)
        dx = layerInterface.getXP() - point.getX()
        dy = layerInterface.getYP() - point.getY()
        return ((@mathUtil.sqrt((dx * dx) + (dy * dy))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end

    def self.instance()
        LayerDistanceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerDistanceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerDistanceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerDistanceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end

begin
    LayerDistanceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

