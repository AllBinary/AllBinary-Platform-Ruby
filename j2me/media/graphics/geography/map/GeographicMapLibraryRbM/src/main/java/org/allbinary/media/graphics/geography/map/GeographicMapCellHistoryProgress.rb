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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistoryProgressBase"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapCellHistoryProgress < GeographicMapCellHistoryProgressBase
    attr_accessor :totalVisitedArray, :geographicMapCellHistoryArray

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellHistoryProgress
        @totalVisitedArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
        @geographicMapCellHistoryArray = GeographicMapCellHistory::NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY
    end
    

    def initialize(geographicMapCellHistoryArray)
        super()
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellHistoryProgress
        @geographicMapCellHistoryArray = geographicMapCellHistoryArray
        self.init()
    end
    

    def init()
        @totalVisitedArray = (Array.new(@geographicMapCellHistoryArray.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
    end
    java_overload :init, 0
    

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
    java_overload :isAnyProgress, 0
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false)

end; end; end; end; end; end

