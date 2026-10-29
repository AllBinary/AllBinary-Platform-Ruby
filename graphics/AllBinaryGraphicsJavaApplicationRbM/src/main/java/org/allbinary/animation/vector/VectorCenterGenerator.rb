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


class VectorCenterGenerator
    attr_accessor :logUtil, :commonStrings, :minX, :minY, :maxX, :maxY, :dx, :dy, :width, :height

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @minX = 2147483647
        @minY = 2147483647
        @maxX = (-2147483648)
        @maxY = (-2147483648)
        @dx = 0
        @dy = 0
        @width = 0
        @height = 0
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def calculate(hashMap)
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            if item.getName() == LinesGraphicItem.getStaticName()
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
        commonLabels = CommonLabels.getInstance()
        s = StringMaker.new().append(commonLabels.WIDTH_LABEL).appendint(getWidth()).append(commonLabels.HEIGHT_LABEL).appendint(getHeight()).append(" max: ").appendint(max).append(" middle: ").appendint(middle).to_s
        @logUtil.putF(s, self, @commonStrings.GET_INSTANCE)
        currentMiddleX = @minX + self.getWidth() / 2
        currentMiddleY = @minY + self.getHeight() / 2
        @dx = middle - currentMiddleX
        @dy = middle - currentMiddleY
    end
    

    # throws Exception
    def transform(hashMap)
        self.calculate(hashMap)
        @logUtil.putF(StringMaker.new().append(" dx: ").appendint(@dx).append(" dy: ").appendint(@dy).to_s, self, @commonStrings.GET_INSTANCE)
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            list = VectorCenterGenerator.translate(item.getPointsInterface().getPoints(), @dx, @dy)
            newPoints = Points.new()
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
        graphicsPipe = BasicGraphicsPipeline.new(list)
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

require "java/util/HashMap"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/graphics/j2me/workarea/tools/Points"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

