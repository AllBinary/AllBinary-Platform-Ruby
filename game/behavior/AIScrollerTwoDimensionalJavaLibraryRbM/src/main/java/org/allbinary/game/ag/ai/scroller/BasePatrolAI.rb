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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:MAX_DISTANCE, SmallIntegerSingletonFactory.getInstance().getAt(2))
            const_set(:DIRECTION_ARRAY, SmallIntegerSingletonFactory.getInstance().getAt(3))
            const_set(:FIRING_DISTANCE, SmallIntegerSingletonFactory.getInstance().getAt(4))
            const_set(:SPEED, SmallIntegerSingletonFactory.getInstance().getAt(5))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasePatrolAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX_DISTANCE, :DIRECTION_ARRAY, :FIRING_DISTANCE, :SPEED].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties"
autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :MathUtil, "org/allbinary/logic/math/MathUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    BasePatrolAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

