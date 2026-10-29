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
# package org.allbinary.animation


class VectorRotationGenerator
    attr_accessor :logUtil, :vectorAnimationUtil, :angleFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
        @angleFactory = AngleFactory.getInstance()
    end
    

    def self.getInstance()
        return VectorRotationGenerator.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(vectorRotationInfo)
        return self.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames())
    end
    

    def getInstanceFrames(width, height, points, frames)
        begin
            totalAngle = @angleFactory.TOTAL_ANGLE
            angleIncrement = totalAngle / frames
            pointsBasicArrayList = BasicArrayListS.new(totalAngle / angleIncrement)
            pointBasicArrayList = BasicArrayListS.new(points.length)
            pointFactory = PointFactory.getInstance()
            size = points.length
            (0...size).each do |index|
                pointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
            end
            index = 0
            while index < totalAngle
                pointsBasicArrayList.add(self.getListAtAngle(width, height, pointBasicArrayList, @angleFactory.getAt(index)))
                index += angleIncrement
            end
            newPoints = @vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size())
            return newPoints
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        end
    end
    

    # throws Exception
    def getListAtAngle(width, height, pointBasicArrayList, angle)
        graphicsPipe = BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(-(width >> 1), -(height >> 1))
        graphicsPipe.rotateToAngle(angle)
        graphicsPipe.translate((width >> 1), (height >> 1))
        return graphicsPipe.getMatrix()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/vector/VectorInfo"
require "org/allbinary/animation/VectorAnimationUtil"

class VectorRotationGenerator
    @@instance = VectorRotationGenerator.new()
end

