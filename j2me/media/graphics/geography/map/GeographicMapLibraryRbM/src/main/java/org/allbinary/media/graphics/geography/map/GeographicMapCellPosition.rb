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
# package org.allbinary.media.graphics.geography.map

require "java/lang/JavaOverload"
require "org/allbinary/graphics/CellPosition"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapCellPosition < ::Org::Allbinary::Graphics::CellPosition
    attr_accessor :point, :midPoint

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPosition
        @point = nil unless instance_variable_defined?(:@point)
        @midPoint = nil unless instance_variable_defined?(:@midPoint)
    end
    

    def initialize(column, row, columns, rows, width, height)
        super(column, row, columns, rows)
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPosition
        x = self.getColumn() * width
        y = self.getRow() * height
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        @point = pointFactory.createXY(x, y)
        @midPoint = pointFactory.createXY(x + (width >> 1), y + (height >> 1))
    end
    

    def getPoint()
        return @point
    end
    java_overload :getPoint, 0
    

    def getMidPoint()
        return @midPoint
    end
    java_overload :getMidPoint, 0
    

    def setMidPoint(midPoint)
        @midPoint = midPoint
    end
    java_overload :setMidPoint, 1
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end

end; end; end; end; end; end

