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
# package org.allbinary.animation.vector

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Animation; module Vector

class VectorCenterGenerator
    attr_accessor :logUtil, :commonStrings, :minX, :minY, :maxX, :maxY, :dx, :dy, :width, :height

    def jfields_org_allbinary_animation_vector_VectorCenterGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @minX = 2147483647
        @minY = 2147483647
        @maxX = (-2147483648)
        @maxY = (-2147483648)
        @dx = 0
        @dy = 0
        @width = 0 unless instance_variable_defined?(:@width)
        @height = 0 unless instance_variable_defined?(:@height)
    end
    

    def initialize()
        jfields_org_allbinary_animation_vector_VectorCenterGenerator
    end
    

    # throws Exception
    def calculate(hashMap)
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            if item.getName() == ::Org::Allbinary::Graphics::J2me::Workarea::Tools::LinesGraphicItem.getStaticName()
                self.getInstance(item.getPointsInterface().getPoints())
            end
        end
        @logUtil.putF("minX: " + (@minX).to_s + " minY: " + (@minY).to_s + " maxX: " + (@maxX).to_s + " maxY: " + (@maxY).to_s, self, @commonStrings.GET_INSTANCE)
        self.setWidth(@maxX - @minX)
        self.setHeight(@maxY - @minY)
        max = self.getWidth()
        if getHeight() > max
            max = self.getHeight()
        end
        middle = max / 2
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        s = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(commonLabels.WIDTH_LABEL).appendint(getWidth()).append(commonLabels.HEIGHT_LABEL).appendint(getHeight()).append(" max: ").appendint(max).append(" middle: ").appendint(middle).to_s
        @logUtil.putF(s, self, @commonStrings.GET_INSTANCE)
        currentMiddleX = @minX + self.getWidth() / 2
        currentMiddleY = @minY + self.getHeight() / 2
        @dx = middle - currentMiddleX
        @dy = middle - currentMiddleY
    end
    

    # throws Exception
    def transform(hashMap)
        self.calculate(hashMap)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(" dx: ").appendint(@dx).append(" dy: ").appendint(@dy).to_s, self, @commonStrings.GET_INSTANCE)
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            list = VectorCenterGenerator.translate(item.getPointsInterface().getPoints(), @dx, @dy)
            newPoints = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Points.new()
            newPoints.addPoints(list)
            item.setPointsInterface(newPoints)
        end
    end
    

    # throws Exception
    def getInstance(pointVector)
        begin
            size = pointVector.size()
            (0...size).each do |index|
                point = pointVector.get(index)
                if point.getX() < @minX
                    @minX = point.getX()
                end
                if point.getX() > @maxX
                    @maxX = point.getX()
                end
                if point.getY() < @minY
                    @minY = point.getY()
                end
                if point.getY() > @maxY
                    @maxY = point.getY()
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            raise e
        end
    end
    

    # throws Exception
    def self.translate(list, x, y)
        graphicsPipe = ::Org::Allbinary::Graphics::Pipeline::BasicGraphicsPipeline.new(list)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()
    end
    

    def getWidth()
        return @width
    end
    

    def setWidth(width)
        @width = width
    end
    

    def getHeight()
        return @height
    end
    

    def setHeight(height)
        @height = height
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :Points, "org/allbinary/graphics/j2me/workarea/tools/Points" unless const_defined?(:Points, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end

