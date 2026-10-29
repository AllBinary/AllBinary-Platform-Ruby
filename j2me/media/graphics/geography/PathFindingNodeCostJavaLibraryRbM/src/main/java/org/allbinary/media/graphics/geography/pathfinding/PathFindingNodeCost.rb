#
# AllBinary Open License Version 1
# Copyright (c) 2006 AllBinary
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

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"

class PathFindingNodeCost < PathFindingNode
    include Comparable
    attr_accessor :commonSeps, :pathFindingNodeCostInfoP

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @pathFindingNodeCostInfoP = nil
    end
    

    def initialize(parent, geographicMapCellPosition, pathFindingNodeCostInfo)
        super(parent, geographicMapCellPosition)
        initialize_fields
        @pathFindingNodeCostInfoP = pathFindingNodeCostInfo
        if @geographicMapCellPosition == nil
            raise StandardError.new("No GeographicMapCellPosition")
        end
        if self.getPathFindingNodeCostInfo() == nil
            raise StandardError.new("No PathFindingNodeCostInfo")
        end
    end
    

    def getPathFindingNodeCostInfo()
        return @pathFindingNodeCostInfoP
    end
    

    def setPathFindingNodeCostInfo(pathFindingNodeCostInfo)
        @pathFindingNodeCostInfoP = pathFindingNodeCostInfo
    end
    

    def compareTo(pathFindingNodeCost)
        return @pathFindingNodeCostInfoP.compareTo(pathFindingNodeCost.pathFindingNodeCostInfoP)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(CommonLabels.getInstance().COLON_SEP)
        stringBuffer.append(self.getPathFindingNodeCostInfo().to_s)
        stringBuffer.append(" Path: ")
        stringBuffer.append(@geographicMapCellPosition.to_s)
        pathFindingNode = @parent
        while pathFindingNode != nil
            stringBuffer.append(pathFindingNode.geographicMapCellPosition.to_s)
            stringBuffer.append(@commonSeps.SPACE)
            pathFindingNode = pathFindingNode.parent
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo"

class PathFindingNodeCost
    NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY = Array.new(0) { Array.new(0, nil) }
end

