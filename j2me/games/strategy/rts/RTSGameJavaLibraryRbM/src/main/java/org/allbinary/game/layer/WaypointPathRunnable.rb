# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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

require "org/allbinary/game/layer/WaypointPathRunnableBase"

class WaypointPathRunnable < WaypointPathRunnableBase
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def run()
        begin
            @pathFindingLayer.getWaypointRunnableLogHelper().start(@pathFindingLayer)
            waypointBehavior = @pathFindingLayer.getWaypointBehavior()
            geographicMapCellPosition = @pathFindingLayer.getCurrentGeographicMapCellPosition()
            if geographicMapCellPosition == nil
                raise StandardError.new("Should never be running here")
            end
            waypointBehavior.setWaypointPathsList(@targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsListRunnable(geographicMapCellPosition))
            @pathFindingLayer.getWaypointRunnableLogHelper().end_(@pathFindingLayer)
            sleep((15 + (@priorityP * 2)) / 1000.0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
    end
    

    def isDone()
        return true
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "java/lang/Thread"

