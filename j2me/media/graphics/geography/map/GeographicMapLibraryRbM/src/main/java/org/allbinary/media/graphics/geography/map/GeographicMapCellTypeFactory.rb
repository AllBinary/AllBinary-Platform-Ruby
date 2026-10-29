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


class GeographicMapCellTypeFactory
    attr_accessor :logUtil, :geographicMapCellTypeArray

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @geographicMapCellTypeArray = Array.new(512, nil)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GeographicMapCellTypeFactory.instance
    end
    

    def get(type)
        return @geographicMapCellTypeArray[type]
    end
    

    def getGeographicMapCellTypeArray()
        return @geographicMapCellTypeArray
    end
    

    def getStartType()
        raise RuntimeError.new()
    end
    

    def getEndType()
        raise RuntimeError.new()
    end
    

    def getEmptyType()
        raise RuntimeError.new()
    end
    

    def isPath(cellType)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

class GeographicMapCellTypeFactory
    @@instance = GeographicMapCellTypeFactory.new()
end

