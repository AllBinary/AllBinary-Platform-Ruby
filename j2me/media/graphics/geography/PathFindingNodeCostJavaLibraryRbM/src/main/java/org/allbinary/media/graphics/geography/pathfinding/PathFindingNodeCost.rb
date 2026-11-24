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
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingNodeCost < PathFindingNode
    include Comparable
    attr_accessor :commonSeps, :pathFindingNodeCostInfoP

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCost
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @pathFindingNodeCostInfoP = nil unless instance_variable_defined?(:@pathFindingNodeCostInfoP)
    end
    

    def initialize(parent, geographicMapCellPosition, pathFindingNodeCostInfo)
        super(parent, geographicMapCellPosition)
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCost
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
    java_overload :getPathFindingNodeCostInfo, 0
    

    def setPathFindingNodeCostInfo(pathFindingNodeCostInfo)
        @pathFindingNodeCostInfoP = pathFindingNodeCostInfo
    end
    java_overload :setPathFindingNodeCostInfo, 1
    

    def compareTo(pathFindingNodeCost)
        return @pathFindingNodeCostInfoP.compareTo(pathFindingNodeCost.pathFindingNodeCostInfoP)
    end
    java_overload :compareTo, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP)
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
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY, Array.new(0) { Array.new(0, nil) })
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingNodeCost"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :PathFindingNodeCostInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo" unless const_defined?(:PathFindingNodeCostInfo, false)

begin
    PathFindingNodeCost.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

