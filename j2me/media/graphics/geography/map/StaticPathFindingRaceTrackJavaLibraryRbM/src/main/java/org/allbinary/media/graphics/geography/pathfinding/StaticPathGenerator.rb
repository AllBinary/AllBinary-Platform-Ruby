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

require "org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface"

class StaticPathGenerator
    include PathGeneratorInterface
    attr_accessor :logUtil, :basicArrayListUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
        PreLogUtil.put("Using Static Path Finding", self, CommonStrings.getInstance().CONSTRUCTOR)
    end
    

    # throws Exception
    def init(geographicMapInterface, totalPaths)
    end
    

    # throws Exception
    def getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory, pathList)
        list = BasicArrayListD.new()
        size = pathList.size()
        basicGeographicMapCellPosition = nil
        geographicMapCellPosition = nil
        (0...size).each do |index|
            basicGeographicMapCellPosition = pathList.get(index)
            geographicMapCellPosition = geographicMapCellPositionFactory.getAt(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())
            list.add(geographicMapCellPosition)
        end
        return list
    end
    

    # throws Exception
    def createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths)
        commonStrings = CommonStrings.getInstance()
        begin
            pathCacheFactory = PathCacheFactory.getInstance()
            mapIdInteger = geographicMapInterface.getAllBinaryTiledLayer().getDataId()
            list = pathCacheFactory.getOrCreate(mapIdInteger)
            if list == @basicArrayListUtil.getImmutableInstance()
                list = BasicArrayListD.new()
                smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
                geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
                id = PathData.getInstance().OFFSET + mapIdInteger.to_i
                basicList = pathCacheFactory.getOrCreate(smallIntegerSingletonFactory.getAt(id))
                size = basicList.size()
                pathList = nil
                (0...size).each do |index|
                    pathList = self.getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory, basicList.get(index))
                    list.add(pathList)
                end
                pathCacheFactory.add(mapIdInteger, list)
                pathCacheFactory.remove(smallIntegerSingletonFactory.getAt(id))
            end
            @logUtil.putF(StringMaker.new().append("Using Cached Path(s): ").append(StringUtil.getInstance().toString(list)).to_s, self, commonStrings.GET_INSTANCE)
            return list
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return BasicArrayListD.new()
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/PathData"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/media/graphics/geography/pathfinding/PathCacheFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"

