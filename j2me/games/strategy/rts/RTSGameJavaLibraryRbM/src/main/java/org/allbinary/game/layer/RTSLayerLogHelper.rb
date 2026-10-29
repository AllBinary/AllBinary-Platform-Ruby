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


class RTSLayerLogHelper
    

    def self.getInstance()
        return RTSLayerLogHelper.instance
    end
    

    def setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer, pathsList)
    end
    

    def trackTo(associatedAdvancedRTSGameLayer, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason)
    end
    

    def turnTo(associatedAdvancedRTSGameLayer, dx, dy, angleInfo, angle, movementAngle, evading, targetAngle)
    end
    

    def doneMoving(associatedAdvancedRTSGameLayer)
    end
    

    def closeEnough(associatedAdvancedRTSGameLayer)
    end
    

    def movingLeft(associatedAdvancedRTSGameLayer)
    end
    

    def movingRight(associatedAdvancedRTSGameLayer)
    end
    

    def movingUp(associatedAdvancedRTSGameLayer)
    end
    

    def movingDown(associatedAdvancedRTSGameLayer)
    end
    

    def currentMoveEnded(associatedAdvancedRTSGameLayer)
    end
    

    def evade(associatedAdvancedRTSGameLayer)
    end
    

    def rotateLeft(associatedAdvancedRTSGameLayer)
    end
    

    def rotateRight(associatedAdvancedRTSGameLayer)
    end
    

    def handle(associatedAdvancedRTSGameLayer, movementAngle)
    end
    

    def noRotation(associatedAdvancedRTSGameLayer)
    end
    

    def notOnPath(associatedAdvancedRTSGameLayer, geographicMapCellHistory, currentGeographicMapCellPosition, pathList)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/math/AngleInfo"
require "org/allbinary/math/NamedAngle"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/PathFindingLayerInterface"

class RTSLayerLogHelper
    @@instance = RTSLayerLogHelper.new()
end

