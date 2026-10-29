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
# package org.allbinary.graphics


class Line
    attr_accessor :p1, :p2, :deltaX, :deltaY

    def initialize_fields
        @p1 = nil
        @p2 = nil
        @deltaX = 0.0
        @deltaY = 0.0
    end
    

    def initialize(p1, p2)
        initialize_fields
        @p1 = PointFactory.getInstance().ZERO_ZERO
        @p2 = @p1
        self.setP1(p1)
        self.setP2(p2)
    end
    

    def getGradient()
        return self.getDeltaY() / self.getDeltaX()
    end
    

    def update()
        @deltaX = (self.getP1().getX()).to_f - self.getP2().getX()
        @deltaY = (self.getP1().getY()).to_f - self.getP2().getY()
    end
    

    def getDeltaX()
        return @deltaX
    end
    

    def getDeltaY()
        return @deltaY
    end
    

    def getP1()
        return @p1
    end
    

    def getP2()
        return @p2
    end
    

    def setP1(p1)
        @p1 = p1
        self.update()
    end
    

    def setP2(p2)
        @p2 = p2
        self.update()
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"

