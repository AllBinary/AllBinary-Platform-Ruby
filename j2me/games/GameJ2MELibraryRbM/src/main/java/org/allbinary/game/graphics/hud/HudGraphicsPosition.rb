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
# package org.allbinary.game.graphics.hud


class HudGraphicsPosition
    attr_accessor :anchor, :point

    def initialize_fields
        @anchor = 0
        @point = PointFactory.getInstance().ZERO_ZERO
    end
    

    def initialize(point, anchor)
        initialize_fields
        self.setAnchor(anchor)
        self.setPoint(point)
    end
    

    def getAnchor()
        return @anchor
    end
    

    def setAnchor(anchor)
        @anchor = anchor
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"

class HudGraphicsPosition
    NULL_HUD_GRAPHICS_POSITION = HudGraphicsPosition.new(PointFactory.getInstance().ZERO_ZERO, 9)
end

