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


class WaypointRunnableLogHelper
    

    def self.getInstance()
        return WaypointRunnableLogHelper.instance
    end
    

    def start(pathFindingLayerInterface)
    end
    

    def end_(pathFindingLayerInterface)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"

class WaypointRunnableLogHelper
    @@instance = WaypointRunnableLogHelper.new()
end

