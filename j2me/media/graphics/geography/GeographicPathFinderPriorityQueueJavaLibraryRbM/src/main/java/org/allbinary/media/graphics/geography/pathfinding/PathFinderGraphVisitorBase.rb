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


#1.4.2
class PathFinderGraphVisitorBase
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
        raise RuntimeError.new()
    end
    

    def isValid(graphPath)
        raise RuntimeError.new()
    end
    

    def getInvalidReason(graphPath)
        raise RuntimeError.new()
    end
end

require "org/allbinary/util/BasicArrayList"

