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

require "org/allbinary/logic/util/event/EventListenerInterface"

module BuildingEventListenerInterface
    include EventListenerInterface
    

    # throws Exception
    def onBuildingEvent(event)
        raise NotImplementedError
    end
end

require "org/allbinary/game/layer/RTSLayerEvent"

