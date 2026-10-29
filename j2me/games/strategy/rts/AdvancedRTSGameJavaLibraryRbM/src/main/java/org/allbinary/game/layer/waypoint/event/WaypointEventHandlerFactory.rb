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
# package org.allbinary.game.layer.waypoint.event


class WaypointEventHandlerFactory
    

    def self.getInstance(groupInterface)
        return WaypointEventHandlerFactory.eventHandlerArray[(groupInterface.getGroupId()).to_i]
    end
    

    def self.removeAll()
        (WaypointEventHandlerFactory.eventHandlerArray.length - 1).step(0, -(1)) do |index|
            WaypointEventHandlerFactory.eventHandlerArray[index].removeAllListeners()
        end
    end

    def self.eventHandlerArray()
        return defined?(@@eventHandlerArray) ? @@eventHandlerArray : nil
    end

    def self.eventHandlerArray=(value)
        @@eventHandlerArray = value
    end
end

require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/waypoint/event/WaypointEventHandler"

class WaypointEventHandlerFactory
    @@eventHandlerArray = [WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new()]
end

