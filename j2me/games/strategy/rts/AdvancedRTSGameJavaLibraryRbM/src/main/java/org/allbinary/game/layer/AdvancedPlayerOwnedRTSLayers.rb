# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/PlayerOwnedRTSLayers"

class AdvancedPlayerOwnedRTSLayers < PlayerOwnedRTSLayers
    attr_accessor :unitsList, :waypointsList, :buildingList, :baseList, :garrisonList, :houseList, :labList, :factoryList

    def initialize_fields
        @unitsList = BasicArrayListD.new()
        @waypointsList = BasicArrayListD.new()
        @buildingList = BasicArrayListD.new()
        @baseList = BasicArrayListD.new()
        @garrisonList = BasicArrayListD.new()
        @houseList = BasicArrayListD.new()
        @labList = BasicArrayListD.new()
        @factoryList = BasicArrayListD.new()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def addUnit(rtsLayer)
        @unitsList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addWaypoint(rtsLayer)
        @waypointsList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addBase(rtsLayer)
        @baseList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addGarrison(rtsLayer)
        @garrisonList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addHouse(rtsLayer)
        @houseList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addLab(rtsLayer)
        @labList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def addFactory(rtsLayer)
        @factoryList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    

    def removeUnit(gameLayer)
        @unitsList.remove(gameLayer)
        @rtsLayerList.remove(gameLayer)
    end
    

    def removeWaypoint(gameLayer)
        @waypointsList.remove(gameLayer)
        @rtsLayerList.remove(gameLayer)
    end
    

    def getUnitsList()
        return @unitsList
    end
    

    def getWaypointsList()
        return @waypointsList
    end
    

    def getBaseList()
        return @baseList
    end
    

    def getGarrisonList()
        return @garrisonList
    end
    

    def getHouseList()
        return @houseList
    end
    

    def getLabList()
        return @labList
    end
    

    def getFactoryList()
        return @factoryList
    end
    

    def getTotalBuildings()
        return @baseList.size() + @garrisonList.size() + @houseList.size() + @labList.size() + @factoryList.size()
    end
    

    def removeBuilding(layerInterface)
        @buildingList.add(layerInterface)
        if self.getBaseList().remove(layerInterface)
            @rtsLayerList.remove(layerInterface)
        elsif self.getFactoryList().remove(layerInterface)
            @rtsLayerList.remove(layerInterface)
        elsif self.getGarrisonList().remove(layerInterface)
            @rtsLayerList.remove(layerInterface)
        elsif self.getLabList().remove(layerInterface)
            @rtsLayerList.remove(layerInterface)
        elsif self.getHouseList().remove(layerInterface)
            @rtsLayerList.remove(layerInterface)
        end
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Bases: ")
        stringBuffer.appendint(self.getBaseList().size())
        stringBuffer.append(" Factory: ")
        stringBuffer.appendint(self.getFactoryList().size())
        stringBuffer.append(" Garrison: ")
        stringBuffer.appendint(self.getGarrisonList().size())
        stringBuffer.append(" Labs: ")
        stringBuffer.appendint(self.getLabList().size())
        stringBuffer.append(" Houses: ")
        stringBuffer.appendint(self.getHouseList().size())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.appendint(self.getWaypointsList().size())
        stringBuffer.append(" Units: ")
        stringBuffer.appendint(self.getUnitsList().size())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getBuildingList()
        return @buildingList
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/layer/RTSLayer"

