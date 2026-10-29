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
# package org.allbinary.media.graphics.geography.map

require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistoryProgressBase"

class GeographicMapCellHistoryProgress < GeographicMapCellHistoryProgressBase
    attr_accessor :totalVisitedArray, :geographicMapCellHistoryArray

    def initialize_fields
        @totalVisitedArray = NullUtil.getInstance().NULL_INT_ARRAY
        @geographicMapCellHistoryArray = GeographicMapCellHistory::NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY
    end
    

    def initialize(geographicMapCellHistoryArray)
        super()
        initialize_fields
        @geographicMapCellHistoryArray = geographicMapCellHistoryArray
        self.init()
    end
    

    def init()
        @totalVisitedArray = Array.new(@geographicMapCellHistoryArray.length, 0)
    end
    

    def isAnyProgress()
        isProgressing = false
        size = @geographicMapCellHistoryArray.length
        currentTotalVisited = 0
        totalVisited = 0
        (0...size).each do |index|
            totalVisited = @geographicMapCellHistoryArray[index].getTotalVisited()
            currentTotalVisited = @totalVisitedArray[index]
            if currentTotalVisited < totalVisited
                isProgressing = true
                @totalVisitedArray[index] = totalVisited
            end
        end
        return isProgressing
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"

