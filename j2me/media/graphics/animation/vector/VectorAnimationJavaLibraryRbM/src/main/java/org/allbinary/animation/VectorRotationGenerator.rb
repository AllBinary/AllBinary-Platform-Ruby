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


module ::Org; module Allbinary; module Animation

class VectorRotationGenerator
    attr_accessor :logUtil, :vectorAnimationUtil, :angleFactory

    def jfields_org_allbinary_animation_VectorRotationGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
        @angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_animation_VectorRotationGenerator
    end
    

    def getInstance(vectorRotationInfo)
        return self.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames())
    end
    

    def getInstanceFrames(width, height, points, frames)
        begin
            totalAngle = @angleFactory.TOTAL_ANGLE
            angleIncrement = totalAngle / frames
            pointsBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(totalAngle / angleIncrement)
            pointBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(points.length)
            pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        end
    end
    

    # throws Exception
    def getListAtAngle(width, height, pointBasicArrayList, angle)
        graphicsPipe = ::Org::Allbinary::Graphics::Pipeline::BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(-width >> 1, -height >> 1)
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

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
module ::Org; module Allbinary; module Vector; autoload :VectorInfo, "org/allbinary/vector/VectorInfo" unless const_defined?(:VectorInfo, false); end; end; end
autoload :VectorAnimationUtil, "org/allbinary/animation/VectorAnimationUtil" unless const_defined?(:VectorAnimationUtil, false)

begin
    VectorRotationGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

