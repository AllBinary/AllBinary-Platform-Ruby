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


class RTSLayer2LogHelper
    

    def self.getInstance()
        return RTSLayer2LogHelper.instance
    end
    

    def steeringUp(pathFindingLayerInterface)
    end
    

    def steeringFireOrStop(pathFindingLayerInterface)
    end
    

    def buildingAbove(pathFindingLayerInterface)
    end
    

    def buildingChaseLeft(pathFindingLayerInterface, angle)
    end
    

    def buildingChaseRight(pathFindingLayerInterface, angle)
    end
    

    def buildingDown(pathFindingLayerInterface)
    end
    

    def buildingChaseDown(pathFindingLayerInterface, angle)
    end
    

    def buildingChaseUp(pathFindingLayerInterface, angle)
    end
    

    def buildingLeft()
    end
    

    def buildingRight()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"

class RTSLayer2LogHelper
    @@instance = RTSLayer2LogHelper.new()
end

