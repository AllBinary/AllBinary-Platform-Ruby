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

require "org/allbinary/game/layer/RTSLayer2LogHelper"

class RTSLayer2SelectedLogHelper < RTSLayer2LogHelper
    attr_accessor :logUtil, :TRACK_TO_FIRE_OR_MOVE, :BUILDING_CHASE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @TRACK_TO_FIRE_OR_MOVE = "trackTo:fireOrMove"
        @BUILDING_CHASE = "buildingChase"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return RTSLayer2SelectedLogHelper.instanceC
    end
    

    def steeringUp(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Up").to_s, self, @TRACK_TO_FIRE_OR_MOVE)
    end
    

    def steeringFireOrStop(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Fire/All Stop").to_s, self, @TRACK_TO_FIRE_OR_MOVE)
    end
    

    def buildingAbove(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Above").to_s, self, @BUILDING_CHASE)
    end
    

    def buildingChaseLeft(pathFindingLayerInterface, angle)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Left: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    

    def buildingChaseRight(pathFindingLayerInterface, angle)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Right: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    

    def buildingDown(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Below").to_s, self, @BUILDING_CHASE)
    end
    

    def buildingChaseDown(pathFindingLayerInterface, angle)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Down: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    

    def buildingChaseUp(pathFindingLayerInterface, angle)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Up: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    

    def buildingLeft(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Left").to_s, self, @BUILDING_CHASE)
    end
    

    def buildingRight(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Right").to_s, self, @BUILDING_CHASE)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/layer/PathFindingLayerInterface"

class RTSLayer2SelectedLogHelper
    @@instanceC = RTSLayer2SelectedLogHelper.new()
end

