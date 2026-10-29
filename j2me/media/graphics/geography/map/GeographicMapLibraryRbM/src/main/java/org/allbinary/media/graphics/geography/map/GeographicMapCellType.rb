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


class GeographicMapCellType
    attr_accessor :logUtil, :type

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @type = nil
    end
    

    def initialize(type, reset)
        initialize_fields
        @type = type
        if type != (-2147483648)
            geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
            geographicMapCellTypeArray = geographicMapCellTypeFactory.getGeographicMapCellTypeArray()
            if geographicMapCellTypeArray[type] == nil || reset == 1
                geographicMapCellTypeArray[type] = self
            else
                if reset != -1
                    raise RuntimeError.new()
                end
            end
        end
    end
    

    def getType()
        return @type
    end
    

    def toString()
        return SmallIntegerSingletonFactory.getInstance().getAt(@type).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

class GeographicMapCellType
    NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY = Array.new(0, nil)
    NULL_GEOGRAPHIC_MAP_CELL_TYPE = GeographicMapCellType.new((-2147483648), 0)
end

