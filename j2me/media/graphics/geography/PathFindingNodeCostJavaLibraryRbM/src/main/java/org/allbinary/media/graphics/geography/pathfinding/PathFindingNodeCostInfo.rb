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


class PathFindingNodeCostInfo
    include Comparable
    attr_accessor :pathFindingNodeCostInfoData, :costFromStartP, :costToEndP, :totalCostP

    def initialize_fields
        @pathFindingNodeCostInfoData = PathFindingNodeCostInfoData.getInstance()
        @costFromStartP = nil
        @costToEndP = nil
        @totalCostP = 0
    end
    

    def initialize(costFromStart, costToGoal)
        initialize_fields
        @costFromStartP = costFromStart
        @costToEndP = costToGoal
        self.setCalculatedTotalCost()
    end
    

    def setCostToEnd(costToEnd)
        @costToEndP = costToEnd
    end
    

    def setTotalCost(totalCost)
        @totalCostP = totalCost
    end
    

    # throws Exception
    def setCalculatedTotalCost()
        @totalCostP = @costFromStartP + @costToEndP
        if @totalCostP > @pathFindingNodeCostInfoData.MAX_NODE_COST
            raise StandardError.new("Max Cost Exceeded")
        end
    end
    

    def setCostFromStart(cost)
        @costFromStartP = cost
    end
    

    def addCostFromStart(cost)
        @costFromStartP += cost
    end
    

    def compareTo(pathFindingNodeCostInfo)
        return java.lang.Long.compare(@totalCostP, pathFindingNodeCostInfo.totalCostP)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(CommonLabels.getInstance().COLON_SEP)
        stringBuffer.append("CostFromStart: ")
        stringBuffer.appendlong(@costFromStartP)
        stringBuffer.append(" CostToEnd: ")
        stringBuffer.appendlong(@costToEndP)
        stringBuffer.append(" TotalCost: ")
        stringBuffer.appendlong(@totalCostP)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData"

