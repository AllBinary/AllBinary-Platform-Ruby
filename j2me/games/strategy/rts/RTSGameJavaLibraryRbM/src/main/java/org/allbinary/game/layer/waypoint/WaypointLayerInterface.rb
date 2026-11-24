# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


module ::Org; module Allbinary; module Game; module Layer; module Waypoint

module WaypointLayerInterface
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def teleportTo(geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def setLoad(resource)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isSelected()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def shouldAddWaypointFromBuilding()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isShowMoreCaptionStates()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def trackTo(reason)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def trackToDXY(dx, dy)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTrackingEvent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def allStop()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getTopLeftGeographicMapCellPosition()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCaptionAnimationHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWaypointBehavior()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWaypointLogHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWaypoint2LogHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWaypointRunnableLogHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionAnimationHelperBase, "org/allbinary/animation/caption/CaptionAnimationHelperBase" unless const_defined?(:CaptionAnimationHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :Waypoint2LogHelper, "org/allbinary/game/layer/waypoint/Waypoint2LogHelper" unless const_defined?(:Waypoint2LogHelper, false)
autoload :WaypointLogHelper, "org/allbinary/game/layer/waypoint/WaypointLogHelper" unless const_defined?(:WaypointLogHelper, false)
autoload :WaypointRunnableLogHelper, "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper" unless const_defined?(:WaypointRunnableLogHelper, false)

end; end; end; end; end

