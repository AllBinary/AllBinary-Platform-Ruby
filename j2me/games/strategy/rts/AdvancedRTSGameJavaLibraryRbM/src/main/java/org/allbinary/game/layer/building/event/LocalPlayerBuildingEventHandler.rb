# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.building.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class LocalPlayerBuildingEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return LocalPlayerBuildingEventHandler.eventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        buildingEventListenerInterface = (eventListenerInterface)
        buildingEventListenerInterface.onBuildingEvent(eventObject)
    end

    def self.eventHandler()
        return defined?(@@eventHandler) ? @@eventHandler : nil
    end

    def self.eventHandler=(value)
        @@eventHandler = value
    end
end

require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"

class LocalPlayerBuildingEventHandler
    @@eventHandler = LocalPlayerBuildingEventHandler.new()
end

