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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/VehicleLayerInterface"

class NullVehicleLayer
    include VehicleLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    

    def getGroupInterface()
        raise RuntimeError.new()
    end
    

    def setPosition(x, y, z)
        raise RuntimeError.new()
    end
    

    def getHeight()
        raise RuntimeError.new()
    end
    

    def getWidth()
        raise RuntimeError.new()
    end
    

    def getHalfHeight()
        raise RuntimeError.new()
    end
    

    def getHalfWidth()
        raise RuntimeError.new()
    end
    

    def getXP()
        raise RuntimeError.new()
    end
    

    def getYP()
        raise RuntimeError.new()
    end
    

    def getZP()
        raise RuntimeError.new()
    end
    

    def getX2()
        raise RuntimeError.new()
    end
    

    def getY2()
        raise RuntimeError.new()
    end
    

    def getZ2()
        raise RuntimeError.new()
    end
    

    def isVisible()
        raise RuntimeError.new()
    end
    

    def moveDXYZ(dx, dy, dz)
        raise RuntimeError.new()
    end
    

    def setVisible(visible)
        raise RuntimeError.new()
    end
    

    def implmentsTickableInterface()
        raise RuntimeError.new()
    end
    

    def implmentsCollidableInterface()
        raise RuntimeError.new()
    end
    

    def implmentsGameInputInterface()
        raise RuntimeError.new()
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise RuntimeError.new()
    end
    

    def getType()
        raise RuntimeError.new()
    end
    

    def getVehicleProperties()
        raise RuntimeError.new()
    end
    

    def getGameKeyEventList()
        raise RuntimeError.new()
    end
    

    def getSpeedBasicDecimal()
        raise RuntimeError.new()
    end
    

    def isReadyForExplosion()
        raise RuntimeError.new()
    end
    

    def getRotationAnimationInterface()
        raise RuntimeError.new()
    end
    

    def setRotationAnimationInterface(animationInterface)
        raise RuntimeError.new()
    end
    

    def isDestroyed()
        raise RuntimeError.new()
    end
    

    def isFinish()
        raise RuntimeError.new()
    end
    

    def getFinalPosition()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def handleFinish()
        raise RuntimeError.new()
    end
    

    def getGeographicMapCellPositionTracking()
        raise RuntimeError.new()
    end
    

    def getGeographicMapCellHistoryArray()
        raise RuntimeError.new()
    end
    

    def setGeographicMapCellHistoryArray(geographicMapCellHistory)
        raise RuntimeError.new()
    end
    

    def paint(graphics)
    end
    

    def paintThreed(graphics)
    end
end

require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/game/identification/Group"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/VehicleProperties"

class NullVehicleLayer
    NULL_VEHICLE_LAYER = NullVehicleLayer.new()
end

