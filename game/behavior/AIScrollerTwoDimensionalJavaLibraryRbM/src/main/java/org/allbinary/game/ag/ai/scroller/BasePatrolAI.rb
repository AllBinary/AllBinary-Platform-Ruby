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
# package org.allbinary.game.ag.ai.scroller

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class BasePatrolAI < BasicAI
    attr_accessor :maxDistance, :currentDistance, :xTotalDistance, :lastKeyDirection, :keyDirection

    def initialize_fields
        @maxDistance = nil
        @currentDistance = nil
        @xTotalDistance = 0
        @lastKeyDirection = Canvas::RIGHT
        @keyDirection = Canvas::RIGHT
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @maxDistance = hashtable.get(BasePatrolAI::MAX_DISTANCE)
        @currentDistance = @maxDistance.to_i
    end
    

    def update()
        self.updateTotalDistance()
        self.changeDirectionIfReachedPacingAreaMax()
    end
    

    def updateTotalDistance()
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        @xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled()
    end
    

    def changeDirectionIfReachedPacingAreaMax()
        mathUtil = MathUtil.getInstance()
        totalDistance = mathUtil.abs(@xTotalDistance)
        if totalDistance > @currentDistance
            self.nextDirection()
        end
    end
    

    def nextDirection()
        if @lastKeyDirection == Canvas::LEFT
            @keyDirection = Canvas::RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        elsif @lastKeyDirection == Canvas::RIGHT
            @keyDirection = Canvas::LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        end
    end
    

    def disable()
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/util/ABHashtable"

class BasePatrolAI
    MAX_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(2)
    DIRECTION_ARRAY = SmallIntegerSingletonFactory.getInstance().getAt(3)
    FIRING_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(4)
    SPEED = SmallIntegerSingletonFactory.getInstance().getAt(5)
end

