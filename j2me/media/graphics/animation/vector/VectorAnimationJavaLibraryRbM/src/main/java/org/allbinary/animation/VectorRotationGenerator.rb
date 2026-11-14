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
        VectorRotationGenerator.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        VectorRotationGenerator.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = VectorRotationGenerator.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VectorRotationGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :Angle, "org/allbinary/math/Angle"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS"
autoload :VectorInfo, "org/allbinary/vector/VectorInfo"
autoload :VectorAnimationUtil, "org/allbinary/animation/VectorAnimationUtil"

begin
    VectorRotationGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

