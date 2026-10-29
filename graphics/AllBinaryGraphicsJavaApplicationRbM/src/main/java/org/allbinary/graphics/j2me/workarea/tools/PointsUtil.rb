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
# package org.allbinary.graphics.j2me.workarea.tools


class PointsUtil
    

    def self.getInstance()
        return PointsUtil.instance
    end
    

    # throws Exception
    def doTransforms(pointVector, angle, fulcrumPoint)
        return VectorRotationGenerator.getInstance().getListAtAngle(fulcrumPoint.getX(), fulcrumPoint.getY(), pointVector, AngleFactory.getInstance().getAt(angle.to_i))
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/VectorRotationGenerator"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/util/BasicArrayList"

class PointsUtil
    @@instance = PointsUtil.new()
end

