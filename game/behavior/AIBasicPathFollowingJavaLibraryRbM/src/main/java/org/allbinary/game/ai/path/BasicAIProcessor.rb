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
# package org.allbinary.game.ai.path

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Ai; module Path

class BasicAIProcessor
    attr_accessor :name, :geographicMapCellHistory, :geographicMapCellPositionBasicArrayList, :geographicMapCellPathHistoryInfo, :basicAI, :geographicMapDirectionUtil

    def jfields_org_allbinary_game_ai_path_BasicAIProcessor
        @name = nil unless instance_variable_defined?(:@name)
        @geographicMapCellHistory = nil unless instance_variable_defined?(:@geographicMapCellHistory)
        @geographicMapCellPositionBasicArrayList = nil unless instance_variable_defined?(:@geographicMapCellPositionBasicArrayList)
        @geographicMapCellPathHistoryInfo = nil unless instance_variable_defined?(:@geographicMapCellPathHistoryInfo)
        @basicAI = nil unless instance_variable_defined?(:@basicAI)
        @geographicMapDirectionUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapDirectionUtil.getInstance()
    end
    

    def initialize(name, geographicMapCellHistory, geographicMapCellPathHistoryInfo, chosenPathList, angleInfo, seed)
        jfields_org_allbinary_game_ai_path_BasicAIProcessor
        @name = name
        @geographicMapCellHistory = geographicMapCellHistory
        @geographicMapCellPositionBasicArrayList = chosenPathList
        @geographicMapCellPathHistoryInfo = geographicMapCellPathHistoryInfo
        self.setName(name)
        self.setNewPath(geographicMapCellHistory, chosenPathList)
        @basicAI = BasicDirectionAIHelper.new(self.getName(), angleInfo)
    end
    

    def setNewPath(geographicMapCellHistory, chosenPathList)
        self.setGeographicMapCellHistory(geographicMapCellHistory)
        @geographicMapCellPositionBasicArrayList = chosenPathList
        self.init()
    end
    

    def init()
        @geographicMapCellPathHistoryInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::GeographicMapCellPathHistoryInfo.new()
        @geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(@geographicMapCellPositionBasicArrayList.get(@geographicMapCellPositionBasicArrayList.size() - 1))
        @geographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition(@geographicMapCellPositionBasicArrayList.get(@geographicMapCellPositionBasicArrayList.size() - 1))
        self.update()
    end
    

    # throws Exception
    def goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition)
        keyDirection = -1
        goToGeographicMapCellPosition = @geographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition()
        geographicMapDirectionData = @geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(currentGeographicMapCellPosition, goToGeographicMapCellPosition)
        if geographicMapDirectionData == ::Org::Allbinary::Direction::DirectionFactory.getInstance().NOT_BORDERED_WITH
            geographicMapDirectionData = @geographicMapDirectionUtil.getDirectionFromCellPositionToCellPosition(currentGeographicMapCellPosition, goToGeographicMapCellPosition)
        end
        keyDirection = @basicAI.getAIKeyPressedFromDirection(geographicMapDirectionData)
        return keyDirection
    end
    

    def update()
        @geographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition(self.getGeographicMapCellHistory().getFirstUnvisited())
        @geographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition(@geographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition())
    end
    

    # throws Exception
    def processAI(myManager, currentGeographicMapCellPosition)
        keyDirection = -1
        if @geographicMapCellPositionBasicArrayList.contains(currentGeographicMapCellPosition)
            self.update()
            keyDirection = self.goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition)
            @geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(currentGeographicMapCellPosition)
        else
            keyDirection = self.goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition)
        end
        return keyDirection
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def getGeographicMapCellPathHistoryInfo()
        return @geographicMapCellPathHistoryInfo
    end
    

    def setGeographicMapCellPathHistoryInfo(geographicMapCellPathHistoryInfo)
        @geographicMapCellPathHistoryInfo = geographicMapCellPathHistoryInfo
    end
    

    def getGeographicMapCellHistory()
        return @geographicMapCellHistory
    end
    

    def setGeographicMapCellHistory(geographicMapCellHistory)
        @geographicMapCellHistory = geographicMapCellHistory
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapDirectionUtil, "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil" unless const_defined?(:GeographicMapDirectionUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :GeographicMapCellPathHistoryInfo, "org/allbinary/media/graphics/geography/pathfinding/GeographicMapCellPathHistoryInfo" unless const_defined?(:GeographicMapCellPathHistoryInfo, false); end; end; end; end; end; end
autoload :BasicDirectionAIHelper, "org/allbinary/game/ai/path/BasicDirectionAIHelper" unless const_defined?(:BasicDirectionAIHelper, false)

end; end; end; end; end

