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
# package org.allbinary.media.graphics.geography.pathfinding


class PathFindingNode
    attr_accessor :parent, :geographicMapCellPosition

    def initialize_fields
        @parent = NullUtil.getInstance().NULL_OBJECT
        @geographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    def initialize(parent, geographicMapCellPosition)
        initialize_fields
        @parent = parent
        self.setGeographicMapCellPositionP(geographicMapCellPosition)
        if @geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            raise StandardError.new("No GeographicMapCellPosition")
        end
    end
    

    def getParentP()
        return @parent
    end
    

    def setGeographicMapCellPositionP(geographicMapCellPosition)
        @geographicMapCellPosition = geographicMapCellPosition
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(CommonLabels.getInstance().COLON_SEP)
        stringBuffer.append(" Path: ")
        stringBuffer.append(@geographicMapCellPosition.to_s)
        pathFindingNode = self.getParentP()
        while pathFindingNode != nil
            stringBuffer.append(pathFindingNode.geographicMapCellPosition.to_s)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            pathFindingNode = pathFindingNode.getParentP()
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/string/CommonLabels"

