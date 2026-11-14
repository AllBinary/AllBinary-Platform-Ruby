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
        VectorMirrorGenerator.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        VectorMirrorGenerator.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = VectorMirrorGenerator.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VectorMirrorGenerator"
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
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS"
autoload :VectorAnimationUtil, "org/allbinary/animation/VectorAnimationUtil"

begin
    VectorMirrorGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

