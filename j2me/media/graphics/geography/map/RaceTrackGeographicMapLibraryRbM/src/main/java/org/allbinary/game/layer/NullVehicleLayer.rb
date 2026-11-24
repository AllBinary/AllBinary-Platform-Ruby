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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/VehicleLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

class NullVehicleLayer
    include VehicleLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    java_overload :getName, 0
    

    def getGroupInterface()
        raise RuntimeError.new()
    end
    java_overload :getGroupInterface, 0
    

    def setPosition(x, y, z)
        raise RuntimeError.new()
    end
    java_overload :setPosition, 3
    

    def getHeight()
        raise RuntimeError.new()
    end
    java_overload :getHeight, 0
    

    def getWidth()
        raise RuntimeError.new()
    end
    java_overload :getWidth, 0
    

    def getHalfHeight()
        raise RuntimeError.new()
    end
    java_overload :getHalfHeight, 0
    

    def getHalfWidth()
        raise RuntimeError.new()
    end
    java_overload :getHalfWidth, 0
    

    def getXP()
        raise RuntimeError.new()
    end
    java_overload :getXP, 0
    

    def getYP()
        raise RuntimeError.new()
    end
    java_overload :getYP, 0
    

    def getZP()
        raise RuntimeError.new()
    end
    java_overload :getZP, 0
    

    def getX2()
        raise RuntimeError.new()
    end
    java_overload :getX2, 0
    

    def getY2()
        raise RuntimeError.new()
    end
    java_overload :getY2, 0
    

    def getZ2()
        raise RuntimeError.new()
    end
    java_overload :getZ2, 0
    

    def isVisible()
        raise RuntimeError.new()
    end
    java_overload :isVisible, 0
    

    def moveDXYZ(dx, dy, dz)
        raise RuntimeError.new()
    end
    java_overload :moveDXYZ, 3
    

    def setVisible(visible)
        raise RuntimeError.new()
    end
    java_overload :setVisible, 1
    

    def implmentsTickableInterface()
        raise RuntimeError.new()
    end
    java_overload :implmentsTickableInterface, 0
    

    def implmentsCollidableInterface()
        raise RuntimeError.new()
    end
    java_overload :implmentsCollidableInterface, 0
    

    def implmentsGameInputInterface()
        raise RuntimeError.new()
    end
    java_overload :implmentsGameInputInterface, 0
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise RuntimeError.new()
    end
    java_overload :implmentsArtificialIntelligenceCompositeInterface, 0
    

    def getType()
        raise RuntimeError.new()
    end
    java_overload :getType, 0
    

    def getVehicleProperties()
        raise RuntimeError.new()
    end
    java_overload :getVehicleProperties, 0
    

    def getGameKeyEventList()
        raise RuntimeError.new()
    end
    java_overload :getGameKeyEventList, 0
    

    def getSpeedBasicDecimal()
        raise RuntimeError.new()
    end
    java_overload :getSpeedBasicDecimal, 0
    

    def isReadyForExplosion()
        raise RuntimeError.new()
    end
    java_overload :isReadyForExplosion, 0
    

    def getRotationAnimationInterface()
        raise RuntimeError.new()
    end
    java_overload :getRotationAnimationInterface, 0
    

    def setRotationAnimationInterface(animationInterface)
        raise RuntimeError.new()
    end
    java_overload :setRotationAnimationInterface, 1
    

    def isDestroyed()
        raise RuntimeError.new()
    end
    java_overload :isDestroyed, 0
    

    def isFinish()
        raise RuntimeError.new()
    end
    java_overload :isFinish, 0
    

    def getFinalPosition()
        raise RuntimeError.new()
    end
    java_overload :getFinalPosition, 0
    

    # throws Exception
    def handleFinish()
        raise RuntimeError.new()
    end
    java_overload :handleFinish, 0
    

    def getGeographicMapCellPositionTracking()
        raise RuntimeError.new()
    end
    java_overload :getGeographicMapCellPositionTracking, 0
    

    def getGeographicMapCellHistoryArray()
        raise RuntimeError.new()
    end
    java_overload :getGeographicMapCellHistoryArray, 0
    

    def setGeographicMapCellHistoryArray(geographicMapCellHistory)
        raise RuntimeError.new()
    end
    java_overload :setGeographicMapCellHistoryArray, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_VEHICLE_LAYER, NullVehicleLayer.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullVehicleLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_VEHICLE_LAYER].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionTracking, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking" unless const_defined?(:GeographicMapCellPositionTracking, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :VehicleProperties, "org/allbinary/game/layer/VehicleProperties" unless const_defined?(:VehicleProperties, false)

begin
    NullVehicleLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

