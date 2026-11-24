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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class StaticPathGenerator
    include PathGeneratorInterface
    attr_accessor :logUtil, :basicArrayListUtil

    def jfields_org_allbinary_media_graphics_geography_pathfinding_StaticPathGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_pathfinding_StaticPathGenerator
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Using Static Path Finding", self, ::Org::Allbinary::StringPackage::CommonStrings.getInstance().CONSTRUCTOR)
    end
    

    # throws Exception
    def init(geographicMapInterface, totalPaths)
    end
    java_overload :init, 2
    

    # throws Exception
    def getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory, pathList)
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList, 2
    

    # throws Exception
    def createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            pathCacheFactory = PathCacheFactory.getInstance()
            mapIdInteger = geographicMapInterface.getAllBinaryTiledLayer().getDataId()
            list = pathCacheFactory.getOrCreate(mapIdInteger)
            if list == @basicArrayListUtil.getImmutableInstance()
                list = ::Org::Allbinary::Util::BasicArrayListD.new()
                smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
                geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
                id = ::Org::Allbinary::Media::Graphics::Geography::Map::PathData.getInstance().OFFSET + mapIdInteger.to_i
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
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Using Cached Path(s): ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(list)).to_s, self, commonStrings.GET_INSTANCE)
            return list
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            return ::Org::Allbinary::Util::BasicArrayListD.new()
        end
    end
    java_overload :createList, 4
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :PathData, "org/allbinary/media/graphics/geography/map/PathData" unless const_defined?(:PathData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :PathCacheFactory, "org/allbinary/media/graphics/geography/pathfinding/PathCacheFactory" unless const_defined?(:PathCacheFactory, false)
autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false)

end; end; end; end; end; end

