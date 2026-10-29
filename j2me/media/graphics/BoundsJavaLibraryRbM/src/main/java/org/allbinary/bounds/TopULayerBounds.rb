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
# package org.allbinary.bounds

require "org/allbinary/bounds/LayerBounds"

class TopULayerBounds < LayerBounds
    

    def initialize(rectangle)
        super(rectangle)
    end
    

    def visit(boundsVisitorInterface)
        if boundsVisitorInterface.getX() > @rectangle.getMaxX()
            boundsVisitorInterface.maxX()
        end
        if boundsVisitorInterface.getX() < @rectangle.getPoint().getX()
            boundsVisitorInterface.minX()
        end
        if boundsVisitorInterface.getY() < @rectangle.getPoint().getY()
            boundsVisitorInterface.minY()
        end
    end
end

require "org/allbinary/graphics/Rectangle"
require "org/allbinary/bounds/BoundsVisitorInterface"

