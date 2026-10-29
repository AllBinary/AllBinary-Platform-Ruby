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
# package org.allbinary.game.layer

require "org/allbinary/thread/PriorityRunnable"
require "org/allbinary/thread/RunnableInterface"

class WaypointPathRunnableBase
    include RunnableInterface
    include PriorityRunnable
    attr_accessor :layerDistanceUtil, :pathFindingLayer, :targetPathFindingLayer, :priorityP, :runningP

    def initialize_fields
        @layerDistanceUtil = LayerDistanceUtil.getInstance()
        @pathFindingLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @targetPathFindingLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @priorityP = 2147483647
        @runningP = false
    end

    def initialize
        initialize_fields
    end
    

    def isRunning()
        return @runningP
    end
    

    def setRunning(isRunning)
        @runningP = isRunning
    end
    

    # throws Exception
    def setThread(thread)
    end
    

    def setTargetLayer(waypointLayer)
        @targetPathFindingLayer = waypointLayer
        self.setPriority()
    end
    

    def setPriority()
        pathFindingLayer = @pathFindingLayer
        targetLayer = @targetPathFindingLayer
        if targetLayer != nil
            distance = @layerDistanceUtil.getDistance(targetLayer, pathFindingLayer)
            distanceCategory = distance / 70
            @priorityP = distanceCategory
        end
    end
    

    def getTargetLayer()
        return @targetPathFindingLayer
    end
    

    def setUnitLayer(unitLayer)
        @pathFindingLayer = unitLayer
    end
    

    def getPriority()
        return @priorityP
    end
    

    def isDone()
        return true
    end
    

    def run()
    end
    

    def reset()
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/math/LayerDistanceUtil"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "java/lang/Thread"

