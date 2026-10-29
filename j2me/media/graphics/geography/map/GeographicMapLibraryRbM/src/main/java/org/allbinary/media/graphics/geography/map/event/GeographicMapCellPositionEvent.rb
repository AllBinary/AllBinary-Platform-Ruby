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
# package org.allbinary.media.graphics.geography.map.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class GeographicMapCellPositionEvent < AllBinaryEventObject
    attr_accessor :geographicMapCellPosition

    def initialize_fields
        @geographicMapCellPosition = CellPositionFactory.getInstance().NONE
    end
    

    def initialize(anyType, geographicMapCellPosition)
        super(anyType)
        initialize_fields
        @geographicMapCellPosition = geographicMapCellPosition
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    

    def setGeographicMapCellPosition(geographicMapCellPosition)
        @geographicMapCellPosition = geographicMapCellPosition
    end
    

    def getGeographicMapCellPosition()
        return @geographicMapCellPosition
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("CellPositionEvent: ")
        stringBuffer.append("\nGeographicMapCellPosition: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getGeographicMapCellPosition()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/graphics/CellPosition"
require "org/allbinary/graphics/CellPositionFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

