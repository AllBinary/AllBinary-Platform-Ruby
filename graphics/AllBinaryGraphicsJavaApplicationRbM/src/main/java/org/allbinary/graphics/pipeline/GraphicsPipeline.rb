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

require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"

class GraphicsPipeline < BasicGraphicsPipeline
    

    def initialize(points)
        super(points)
    end
    

    # throws Exception
    def rotateTheta(aTheta)
        newVector = BasicArrayListD.new()
        size = @pointBasicArrayList.size()
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.get(index)
            secondX = (secondPoint.getX() * Math.cos(aTheta)) - (secondPoint.getY() * Math.sin(aTheta))
            secondY = (secondPoint.getX() * Math.sin(aTheta)) + (secondPoint.getY() * Math.cos(aTheta))
            point = PointFactory.getInstance().createXY(((secondX).to_i), ((secondY).to_i))
            newVector.add(point)
        end
        @pointBasicArrayList = newVector
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

