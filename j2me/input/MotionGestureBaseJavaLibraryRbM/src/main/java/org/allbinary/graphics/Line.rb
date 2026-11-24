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


module ::Org; module Allbinary; module Graphics

class Line
    attr_accessor :p1, :p2, :deltaX, :deltaY

    def jfields_org_allbinary_graphics_Line
        @p1 = nil unless instance_variable_defined?(:@p1)
        @p2 = nil unless instance_variable_defined?(:@p2)
        @deltaX = 0.0 unless instance_variable_defined?(:@deltaX)
        @deltaY = 0.0 unless instance_variable_defined?(:@deltaY)
    end
    

    def initialize(p1, p2)
        jfields_org_allbinary_graphics_Line
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

autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false)
autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false)

end; end; end

