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


class BasicAIProcessor
    attr_accessor :name, :geographicMapCellHistory, :geographicMapCellPositionBasicArrayList, :geographicMapCellPathHistoryInfo, :basicAI, :geographicMapDirectionUtil

    def initialize_fields
        @name = nil
        @geographicMapCellHistory = nil
        @geographicMapCellPositionBasicArrayList = nil
        @geographicMapCellPathHistoryInfo = nil
        @basicAI = nil
        @geographicMapDirectionUtil = GeographicMapDirectionUtil.getInstance()
    end
    

    def initialize(name, geographicMapCellHistory, geographicMapCellPathHistoryInfo, chosenPathList, angleInfo, seed)
        initialize_fields
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
        @geographicMapCellPathHistoryInfo = GeographicMapCellPathHistoryInfo.new()
        @geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(@geographicMapCellPositionBasicArrayList.get(@geographicMapCellPositionBasicArrayList.size() - 1))
        @geographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition(@geographicMapCellPositionBasicArrayList.get(@geographicMapCellPositionBasicArrayList.size() - 1))
        self.update()
    end
    

    # throws Exception
    def goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition)
        keyDirection = -1
        goToGeographicMapCellPosition = @geographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition()
        geographicMapDirectionData = @geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(currentGeographicMapCellPosition, goToGeographicMapCellPosition)
        if geographicMapDirectionData == DirectionFactory.getInstance().NOT_BORDERED_WITH
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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil"
require "org/allbinary/media/graphics/geography/pathfinding/GeographicMapCellPathHistoryInfo"
require "org/allbinary/game/ai/path/BasicDirectionAIHelper"

