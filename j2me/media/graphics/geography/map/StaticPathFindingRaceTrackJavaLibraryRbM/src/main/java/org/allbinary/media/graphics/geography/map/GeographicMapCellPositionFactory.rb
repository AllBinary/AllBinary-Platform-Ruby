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

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"

class GeographicMapCellPositionFactory < GeographicMapCellPositionBaseFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def getInstance(geographicMapInterface)
        commonStrings = CommonStrings.getInstance()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        geographicMapCellPositionFactoryCanBeNull = GeographicMapCellPositionFactory.hashtable.get(allBinaryTiledLayer.getDataId())
        if geographicMapCellPositionFactoryCanBeNull == nil
            @logUtil.putF(StringMaker.new().append("Creating GeographicMapCellPositionFactory for TileLayer: ").appendint((allBinaryTiledLayer.getDataId().to_i).to_i).to_s, self, commonStrings.GET_INSTANCE)
            geographicMapCellPositionFactoryCanBeNull = BasicGeographicMapCellPositionFactory.new(geographicMapInterface)
            GeographicMapCellPositionFactory.hashtable.put(allBinaryTiledLayer.getDataId(), geographicMapCellPositionFactoryCanBeNull)
            return geographicMapCellPositionFactoryCanBeNull
        else
            @logUtil.putF(StringMaker.new().append("Reusing GeographicMapCellPositionFactory for TileLayer: ").appendint((allBinaryTiledLayer.getDataId().to_i).to_i).to_s, self, commonStrings.GET_INSTANCE)
            return geographicMapCellPositionFactoryCanBeNull
        end
    end
    

    def self.getHashtable()
        return GeographicMapCellPositionFactory.hashtable
    end

    def self.hashtable()
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        @@hashtable = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"

class GeographicMapCellPositionFactory
    @@hashtable = StdUtil.getInstance().createHashtable()
end

