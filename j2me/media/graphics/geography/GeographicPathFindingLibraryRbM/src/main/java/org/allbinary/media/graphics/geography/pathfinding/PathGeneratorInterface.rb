# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


module PathGeneratorInterface
    

    # throws Exception
    def createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths)
        raise NotImplementedError
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"

