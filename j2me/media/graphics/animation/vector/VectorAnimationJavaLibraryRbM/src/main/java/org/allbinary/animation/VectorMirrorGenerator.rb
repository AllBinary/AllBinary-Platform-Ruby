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

class VectorMirrorGenerator
    attr_accessor :logUtil, :vectorAnimationUtil

    def jfields_org_allbinary_animation_VectorMirrorGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_animation_VectorMirrorGenerator
    end
    

    def getInstance_j2_1(points, width)
        begin
            pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
            pointBasicArrayList = nil
            nextPoints = nil
            size2 = 0
            size = points.length
            pointsBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(size)
            (0...size).each do |frame|
                nextPoints = points[frame]
                size2 = nextPoints.length
                pointBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(size2)
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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        end
    end
    

    # throws Exception
    def getInstance_j2_2(pointBasicArrayList, width)
        graphicsPipe = ::Org::Allbinary::Graphics::Pipeline::BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.mirror(width)
        return graphicsPipe.getMatrix()
    end

    def getInstance(*java_overload_args)
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j2(*java_overload_args)
        return getInstance_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].empty? || (java_overload_args[0][0].nil? || java_overload_args[0][0].is_a?(::Array))))) && java_overload_args[1].is_a?(::Integer)
        return getInstance_j2_2(*java_overload_args)
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

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :VectorAnimationUtil, "org/allbinary/animation/VectorAnimationUtil" unless const_defined?(:VectorAnimationUtil, false)

begin
    VectorMirrorGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

