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

require "java/lang/JavaOverload"
require "org/allbinary/thread/PriorityRunnable"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module Game; module Layer

class WaypointPathRunnableBase
    include ::Org::Allbinary::ThreadPackage::RunnableInterface
    include ::Org::Allbinary::ThreadPackage::PriorityRunnable
    attr_accessor :layerDistanceUtil, :pathFindingLayer, :targetPathFindingLayer, :priorityP, :runningP

    def jfields_org_allbinary_game_layer_WaypointPathRunnableBase
        @layerDistanceUtil = ::Org::Allbinary::MathPackage::LayerDistanceUtil.getInstance()
        @pathFindingLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @targetPathFindingLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @priorityP = 2147483647
        @runningP = false unless instance_variable_defined?(:@runningP)
    end

    def initialize
        jfields_org_allbinary_game_layer_WaypointPathRunnableBase
    end
    

    def isRunning()
        return @runningP
    end
    java_overload :isRunning, 0
    

    def setRunning(isRunning)
        @runningP = isRunning
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

    def setTargetLayer(waypointLayer)
        @targetPathFindingLayer = waypointLayer
        self.setPriority()
    end
    java_overload :setTargetLayer, 1
    

    def setPriority()
        pathFindingLayer = @pathFindingLayer
        targetLayer = @targetPathFindingLayer
        if targetLayer != nil
            distance = @layerDistanceUtil.getDistance(targetLayer, pathFindingLayer)
            distanceCategory = distance / 70
            @priorityP = distanceCategory
        end
    end
    java_overload :setPriority, 0
    

    def getTargetLayer()
        return @targetPathFindingLayer
    end
    java_overload :getTargetLayer, 0
    

    def setUnitLayer(unitLayer)
        @pathFindingLayer = unitLayer
    end
    java_overload :setUnitLayer, 1
    

    def getPriority()
        return @priorityP
    end
    java_overload :getPriority, 0
    

    def isDone()
        return true
    end
    java_overload :isDone, 0
    

    def run()
    end
    java_overload :run, 0
    

    def reset()
    end
    java_overload :reset, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :LayerDistanceUtil, "org/allbinary/math/LayerDistanceUtil" unless const_defined?(:LayerDistanceUtil, false); end; end; end
autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false)
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)
require "java/lang/Thread"

end; end; end; end

