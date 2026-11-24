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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingNodeCostInfo
    include Comparable
    attr_accessor :pathFindingNodeCostInfoData, :costFromStartP, :costToEndP, :totalCostP

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfo
        @pathFindingNodeCostInfoData = PathFindingNodeCostInfoData.getInstance()
        @costFromStartP = nil unless instance_variable_defined?(:@costFromStartP)
        @costToEndP = nil unless instance_variable_defined?(:@costToEndP)
        @totalCostP = 0 unless instance_variable_defined?(:@totalCostP)
    end
    

    def initialize(costFromStart, costToGoal)
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfo
        @costFromStartP = costFromStart
        @costToEndP = costToGoal
        self.setCalculatedTotalCost()
    end
    

    def setCostToEnd(costToEnd)
        @costToEndP = costToEnd
    end
    java_overload :setCostToEnd, 1
    

    def setTotalCost(totalCost)
        @totalCostP = totalCost
    end
    java_overload :setTotalCost, 1
    

    # throws Exception
    def setCalculatedTotalCost()
        @totalCostP = @costFromStartP + @costToEndP
        if @totalCostP > @pathFindingNodeCostInfoData.MAX_NODE_COST
            raise StandardError.new("Max Cost Exceeded")
        end
    end
    java_overload :setCalculatedTotalCost, 0
    

    def setCostFromStart(cost)
        @costFromStartP = cost
    end
    java_overload :setCostFromStart, 1
    

    def addCostFromStart(cost)
        @costFromStartP += cost
    end
    java_overload :addCostFromStart, 1
    

    def compareTo(pathFindingNodeCostInfo)
        if @totalCostP < pathFindingNodeCostInfo.totalCostP
            return -1
        elsif @totalCostP > pathFindingNodeCostInfo.totalCostP
            return 1
        end
        return 0
    end
    java_overload :compareTo, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP)
        stringBuffer.append("CostFromStart: ")
        stringBuffer.appendlong(@costFromStartP)
        stringBuffer.append(" CostToEnd: ")
        stringBuffer.appendlong(@costToEndP)
        stringBuffer.append(" TotalCost: ")
        stringBuffer.appendlong(@totalCostP)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :PathFindingNodeCostInfoData, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData" unless const_defined?(:PathFindingNodeCostInfoData, false)

end; end; end; end; end; end

