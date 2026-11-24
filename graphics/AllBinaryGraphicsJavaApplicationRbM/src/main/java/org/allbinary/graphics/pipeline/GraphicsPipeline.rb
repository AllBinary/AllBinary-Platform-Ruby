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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"

module ::Org; module Allbinary; module Graphics; module Pipeline

class GraphicsPipeline < BasicGraphicsPipeline
    

    def initialize(points)
        super(points)
    end
    

    # throws Exception
    def rotateTheta(aTheta)
        newVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = @pointBasicArrayList.size()
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.get(index)
            secondX = (secondPoint.getX() * Math.cos(aTheta)) - (secondPoint.getY() * Math.sin(aTheta))
            secondY = (secondPoint.getX() * Math.sin(aTheta)) + (secondPoint.getY() * Math.cos(aTheta))
            point = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(((secondX).to_i), ((secondY).to_i))
            newVector.add(point)
        end
        @pointBasicArrayList = newVector
    end
    java_overload :rotateTheta, 1
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end

