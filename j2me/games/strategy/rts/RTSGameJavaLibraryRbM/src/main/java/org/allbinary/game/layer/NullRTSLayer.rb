# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"

class NullRTSLayer < NullPathFindingLayer
    include RTSPlayerLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def processInput(layerManager)
        raise RuntimeError.new()
    end
    

    def initInputProcessors()
        raise RuntimeError.new()
    end
    

    def getGameNotificationHud()
        raise RuntimeError.new()
    end
    

    def getCurrentScrollSelectionForm()
        raise RuntimeError.new()
    end
    

    def setCurrentScrollSelectionForm(currentScrollSelectionForm)
        raise RuntimeError.new()
    end
    

    def getBuildingScrollSelectionForm()
        raise RuntimeError.new()
    end
    

    def getPlayerGameInput()
        raise RuntimeError.new()
    end
    

    def onEvent(eventObject)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def onDestroyed(destroyedEvent)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        raise RuntimeError.new()
    end
    

    def getCapital()
        raise RuntimeError.new()
    end
    

    def getRTSFormInput()
        return NullRTSFormInputFactory.getInstance()
    end
    

    def add(sound)
        raise RuntimeError.new()
    end
    

    def getPlayerOwnedRTSLayers()
        raise RuntimeError.new()
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise RuntimeError.new()
    end
end

require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/input/PlayerGameInput"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/game/layer/PlayerOwnedRTSLayers"

class NullRTSLayer
    NULL_RTS_LAYER = NullRTSLayer.new()
end

