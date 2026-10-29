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


class VectorMirrorGenerator
    attr_accessor :logUtil, :vectorAnimationUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
    end
    

    def self.getInstance()
        return VectorMirrorGenerator.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(points, width)
        begin
            pointFactory = PointFactory.getInstance()
            pointBasicArrayList = nil
            nextPoints = nil
            size2 = 0
            size = points.length
            pointsBasicArrayList = BasicArrayListS.new(size)
            (0...size).each do |frame|
                nextPoints = points[frame]
                size2 = nextPoints.length
                pointBasicArrayList = BasicArrayListS.new(size2)
                (0...size2).each do |index|
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index][0], nextPoints[index][1]))
                end
                pointsBasicArrayList.add(pointBasicArrayList)
            end
            (0...points.length).each do |index|
                pointsBasicArrayList.add(self.getInstance(pointsBasicArrayList.objectArray[index], width))
            end
            newPoints = @vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList)
            return newPoints
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(pointBasicArrayList, width)
        graphicsPipe = BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.mirror(width)
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
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/animation/VectorAnimationUtil"

class VectorMirrorGenerator
    @@instance = VectorMirrorGenerator.new()
end

