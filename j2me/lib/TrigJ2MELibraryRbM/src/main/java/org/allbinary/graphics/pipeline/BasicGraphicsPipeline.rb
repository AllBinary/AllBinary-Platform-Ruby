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
# package org.allbinary.graphics.pipeline


module ::Org; module Allbinary; module Graphics; module Pipeline

class BasicGraphicsPipeline
    attr_accessor :pointBasicArrayList, :noDecimalTrigTable

    def jfields_org_allbinary_graphics_pipeline_BasicGraphicsPipeline
        @pointBasicArrayList = nil unless instance_variable_defined?(:@pointBasicArrayList)
        @noDecimalTrigTable = ::Org::Allbinary::MathPackage::NoDecimalTrigTable.getInstance()
    end
    

    def initialize(points)
        jfields_org_allbinary_graphics_pipeline_BasicGraphicsPipeline
        @pointBasicArrayList = points
    end
    

    def setInitMatrix(points)
        @pointBasicArrayList = points
    end
    

    def createMatrix()
    end
    

    # throws Exception
    def translate(x, y)
        newBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = @pointBasicArrayList.size()
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        secondPoint = nil
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() + x, secondPoint.getY() + y))
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    # throws Exception
    def rotateToAngle(angle)
        self.rotate(((angle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
    end
    

    # throws Exception
    def rotate(angle)
        newBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        secondPoint = nil
        y = 0
        secondX = 0
        secondY = 0
        point = nil
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        size = @pointBasicArrayList.size()
        sin = 0
        cos = 0
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                sin = @noDecimalTrigTable.sin(angle)
                cos = @noDecimalTrigTable.cos(angle)
                y = secondPoint.getY() * sin
                secondX = (secondPoint.getX() * cos) - y
                secondY = (secondPoint.getX() * sin) + (secondPoint.getY() * cos)
                point = pointFactory.createXY(secondX / 10000, secondY / 10000)
                newBasicArrayList.add(point)
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    # throws Exception
    def mirror(width)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        halfWidth = (width >> 1)
        newBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        secondPoint = nil
        newX = 0
        point = nil
        size = @pointBasicArrayList.size()
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                newX = 0
                if secondPoint.getX() > halfWidth
                    newX = halfWidth - (secondPoint.getX() - halfWidth)
                else
                    newX = halfWidth + (halfWidth - secondPoint.getX())
                end
                point = pointFactory.createXY(newX, secondPoint.getY())
                newBasicArrayList.add(point)
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    def getMatrix()
        return @pointBasicArrayList
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :NoDecimalTrigTable, "org/allbinary/math/NoDecimalTrigTable" unless const_defined?(:NoDecimalTrigTable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end

