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
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBaseInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

module PathFindingNodeCostInfoFactoryInterface
    include PathFindingNodeCostInfoFactoryBaseInterface
    

    # throws Exception
    def getInstance_j4(comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getInstance_j2(comingFromGeographicMapCellPosition, geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end

    def getInstance(*java_overload_args)
        return getInstance_j4(*java_overload_args) if java_overload_args.length == 4
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
    

    def getTotalCost(comingFromGeographicMapCellPosition, geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTotalCost, 2
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
autoload :PathFindingNodeCostInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo" unless const_defined?(:PathFindingNodeCostInfo, false)

end; end; end; end; end; end

