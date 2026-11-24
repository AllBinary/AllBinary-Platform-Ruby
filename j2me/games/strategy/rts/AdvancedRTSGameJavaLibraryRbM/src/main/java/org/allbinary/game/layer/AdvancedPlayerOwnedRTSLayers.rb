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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/PlayerOwnedRTSLayers"

module ::Org; module Allbinary; module Game; module Layer

class AdvancedPlayerOwnedRTSLayers < PlayerOwnedRTSLayers
    attr_accessor :unitsList, :waypointsList, :buildingList, :baseList, :garrisonList, :houseList, :labList, :factoryList

    def jfields_org_allbinary_game_layer_AdvancedPlayerOwnedRTSLayers
        @unitsList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @waypointsList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @buildingList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @baseList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @garrisonList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @houseList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @labList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @factoryList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        super()
        jfields_org_allbinary_game_layer_AdvancedPlayerOwnedRTSLayers
    end
    

    def addUnit(rtsLayer)
        @unitsList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addUnit, 1
    

    def addWaypoint(rtsLayer)
        @waypointsList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addWaypoint, 1
    

    def addBase(rtsLayer)
        @baseList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addBase, 1
    

    def addGarrison(rtsLayer)
        @garrisonList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addGarrison, 1
    

    def addHouse(rtsLayer)
        @houseList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addHouse, 1
    

    def addLab(rtsLayer)
        @labList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addLab, 1
    

    def addFactory(rtsLayer)
        @factoryList.add(rtsLayer)
        @buildingList.add(rtsLayer)
        @rtsLayerList.add(rtsLayer)
    end
    java_overload :addFactory, 1
    

    def removeUnit(gameLayer)
        @unitsList.remove(gameLayer)
        @rtsLayerList.remove(gameLayer)
    end
    java_overload :removeUnit, 1
    

    def removeWaypoint(gameLayer)
        @waypointsList.remove(gameLayer)
        @rtsLayerList.remove(gameLayer)
    end
    java_overload :removeWaypoint, 1
    

    def getUnitsList()
        return @unitsList
    end
    java_overload :getUnitsList, 0
    

    def getWaypointsList()
        return @waypointsList
    end
    java_overload :getWaypointsList, 0
    

    def getBaseList()
        return @baseList
    end
    java_overload :getBaseList, 0
    

    def getGarrisonList()
        return @garrisonList
    end
    java_overload :getGarrisonList, 0
    

    def getHouseList()
        return @houseList
    end
    java_overload :getHouseList, 0
    

    def getLabList()
        return @labList
    end
    java_overload :getLabList, 0
    

    def getFactoryList()
        return @factoryList
    end
    java_overload :getFactoryList, 0
    

    def getTotalBuildings()
        return @baseList.size() + @garrisonList.size() + @houseList.size() + @labList.size() + @factoryList.size()
    end
    java_overload :getTotalBuildings, 0
    

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
    java_overload :removeBuilding, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getBuildingList()
        return @buildingList
    end
    java_overload :getBuildingList, 0
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false)
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)

end; end; end; end

