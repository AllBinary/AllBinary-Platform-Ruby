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


class GeographicPathFinderBase
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState)
        raise RuntimeError.new()
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/media/graphics/geography/pathfinding/MultipassState"

class GeographicPathFinderBase
    NULL_GEOGRAPHIC_PATH_FINDER_BASE = GeographicPathFinderBase.new()
end

