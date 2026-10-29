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
# package org.allbinary.game.layer.waypoint

require "org/allbinary/game/layer/waypoint/Waypoint"

class WorkWaypoint < Waypoint
    

    def initialize(ownerLayer)
        super(ownerLayer, WorkSound.getInstance())
    end
    

    # throws Exception
    def visit(unitLayer)
        if unitLayer.getGroupInterface()[0] != @ownerLayer.getGroupInterface()[0]
            return
        end
        size = self.getConnectedWaypointList().size()
        if size > 0
            occupyList = @ownerLayer.getGeographicMapCellPositionArea().getOccupyingGeographicMapCellPositionList()
            outOfResources = true
            geologicalGeographicMapCellPosition = nil
            geologicalResource = nil
            index = occupyList.size()
            while (index -= 1) >= 0
                geologicalGeographicMapCellPosition = occupyList.get(index)
                geologicalResource = geologicalGeographicMapCellPosition.getGeologicalResource()
                if geologicalResource.getTotal() >= 1
                    outOfResources = false
                    maxResourceLoad = (unitLayer.getMaxResourceLoad()).to_i
                    geologicalResource.remove(maxResourceLoad)
                    unitLayer.setLoad(maxResourceLoad)
                end
            end
            waypointInfoHudPaintable = @ownerLayer.getHudPaintable()
            if @ownerLayer == waypointInfoHudPaintable.getRtsLayer()
                waypointInfoHudPaintable.updateSelectionInfo()
            end
            if !outOfResources
                unitWaypointBehavior = unitLayer.getWaypointBehavior()
                rtsLayer = nil
                while self.getConnectedWaypointList().size() > 0
                    rtsLayer = self.getConnectedWaypointList().get(0)
                    if rtsLayer.isDestroyed()
                        self.getConnectedWaypointList().remove(rtsLayer)
                    else
                        unitWaypointBehavior.insertWaypoint(0, rtsLayer)
                        break
                    end
                end
            end
        end
    end
    

    def getType()
        return 2
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition"
require "org/allbinary/game/layer/geological/resources/GeologicalResource"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"
require "org/allbinary/media/audio/WorkSound"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable"

class WorkWaypoint
    ID = SmallIntegerSingletonFactory.getInstance().getAt(25)
end

