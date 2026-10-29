#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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

require "org/allbinary/layer/LayerInterface"
require "org/allbinary/game/layer/VehiclePropertiesCompositeInterface"

module VehicleLayerInterface
    include LayerInterface
    include VehiclePropertiesCompositeInterface
    

    def getGameKeyEventList()
        raise NotImplementedError
    end
    

    def getSpeedBasicDecimal()
        raise NotImplementedError
    end
    

    def isReadyForExplosion()
        raise NotImplementedError
    end
    

    def getRotationAnimationInterface()
        raise NotImplementedError
    end
    

    def setRotationAnimationInterface(animationInterface)
        raise NotImplementedError
    end
    

    def isDestroyed()
        raise NotImplementedError
    end
    

    def isFinish()
        raise NotImplementedError
    end
    

    def getFinalPosition()
        raise NotImplementedError
    end
    

    # throws Exception
    def handleFinish()
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionTracking()
        raise NotImplementedError
    end
    

    def getGeographicMapCellHistoryArray()
        raise NotImplementedError
    end
    

    def setGeographicMapCellHistoryArray(geographicMapCellHistory)
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking"

