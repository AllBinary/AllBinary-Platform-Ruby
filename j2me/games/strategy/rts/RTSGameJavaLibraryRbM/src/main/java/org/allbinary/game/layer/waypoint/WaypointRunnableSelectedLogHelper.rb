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

require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"

class WaypointRunnableSelectedLogHelper < WaypointRunnableLogHelper
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return WaypointRunnableSelectedLogHelper.instanceC
    end
    

    def start(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(@commonStrings.START_RUNNABLE).to_s, self, @commonStrings.RUN)
    end
    

    def end_(pathFindingLayerInterface)
        @logUtil.putF(StringMaker.new().append(pathFindingLayerInterface.getName()).append(@commonStrings.END_RUNNABLE).to_s, self, @commonStrings.RUN)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"

class WaypointRunnableSelectedLogHelper
    @@instanceC = WaypointRunnableSelectedLogHelper.new()
end

