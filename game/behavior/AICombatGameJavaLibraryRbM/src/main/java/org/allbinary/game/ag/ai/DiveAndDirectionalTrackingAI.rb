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
# package org.allbinary.game.ag.ai

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

class DiveAndDirectionalTrackingAI < BasicAI
    include TrackingEventListenerInterface
    include DestroyedEventListenerInterface
    attr_accessor :mathUtil, :directionFactory, :gameTickTimeDelayHelper, :timeDelayHelper, :list, :directionalInterface, :velocityInterface, :directionToKeyMap, :initialDropped, :diveP, :directionOfTarget, :MIN_DISTANCE, :lastTrackingLayerInterface, :artificialIntelligenceInterface, :aiVistor, :lastDirection

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
        @directionFactory = DirectionFactory.getInstance()
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(500)
        @list = BasicArrayListD.new()
        @directionalInterface = nil
        @velocityInterface = nil
        @directionToKeyMap = [Canvas::LEFT, Canvas::DOWN, Canvas::UP, Canvas::RIGHT]
        @initialDropped = false
        @diveP = false
        @directionOfTarget = Direction.getInstance(0)
        @MIN_DISTANCE = 40
        @lastTrackingLayerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
        @artificialIntelligenceInterface = nil
        @aiVistor = nil
        @lastDirection = DirectionFactory.getInstance().NO_DIRECTION
    end
    

    def initialize(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @aiVistor = visitor
        @artificialIntelligenceInterface = artificialIntelligenceInterface
        directionalCompositeInterface = self.getOwnerLayerInterface()
        @directionalInterface = directionalCompositeInterface.getDirectionalInterface()
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        DestroyedEventHandler.getInstance().addListenerInterface(self)
        self.init()
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if self.isBeyondTarget()
            self.init()
            @velocityInterface.zero()
        end
        if !@diveP
            self.target(allBinaryLayerManager)
        else
            self.dive()
            self.attack()
        end
        @list.clear()
    end
    

    def init()
        @diveP = false
        @directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH
        TrackingEventHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def target(allBinaryLayerManager)
        if @list.size() == 0
            return
        end
        lastTrackingEvent = @list.removeAt(0)
        @lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
        layerInterface = @lastTrackingLayerInterface
        ownerLayerInterface = self.getOwnerLayerInterface()
        if layerInterface.getGroupInterface() == ownerLayerInterface.getGroupInterface()
            return
        end
        x = @lastTrackingLayerInterface.getXP()
        y = @lastTrackingLayerInterface.getYP()
        yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight()
        xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth()
        directionFactory = DirectionFactory.getInstance()
        if @mathUtil.abs(yDistance) > @mathUtil.abs(xDistance)
            if yDistance > @MIN_DISTANCE
                @directionOfTarget = directionFactory.UP
            elsif yDistance < -@MIN_DISTANCE
                @directionOfTarget = directionFactory.DOWN
            end
        else
            if xDistance > @MIN_DISTANCE
                @directionOfTarget = directionFactory.LEFT
            elsif xDistance < -@MIN_DISTANCE
                @directionOfTarget = directionFactory.RIGHT
            end
        end
        if !@initialDropped && @directionOfTarget != directionFactory.NOT_BORDERED_WITH
            self.drop()
        end
        if @initialDropped
            if @directionOfTarget == directionFactory.UP || @directionOfTarget == directionFactory.DOWN
                self.verticalTargeting(x)
            elsif @directionOfTarget == directionFactory.LEFT || @directionOfTarget == directionFactory.RIGHT
                self.horizontalTargeting(y)
            else
                @artificialIntelligenceInterface.processAI(allBinaryLayerManager)
            end
        end
    end
    

    # throws Exception
    def verticalTargeting(x)
        ownerLayerInterface = self.getOwnerLayerInterface()
        if ownerLayerInterface.getXP() < x
            self.moveRight()
        end
        if ownerLayerInterface.getXP() > x
            self.moveLeft()
        end
        if ownerLayerInterface.getXP() > x - 3 && ownerLayerInterface.getXP() < x + 3
            self.setDive()
        end
    end
    

    # throws Exception
    def horizontalTargeting(y)
        ownerLayerInterface = self.getOwnerLayerInterface()
        if ownerLayerInterface.getYP() < y
            self.moveDown()
        end
        if ownerLayerInterface.getYP() > y
            self.moveUp()
        end
        if ownerLayerInterface.getYP() > y - 3 && ownerLayerInterface.getYP() < y + 3
            self.setDive()
        end
    end
    

    def setDive()
        @diveP = true
        @velocityInterface.zero()
        TrackingEventHandler.getInstance().removeListener(self)
    end
    

    # throws Exception
    def moveRight()
        self.setLastDirection(@directionFactory.RIGHT)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    

    # throws Exception
    def moveLeft()
        self.setLastDirection(@directionFactory.LEFT)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    

    # throws Exception
    def moveDown()
        self.setLastDirection(@directionFactory.DOWN)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    

    # throws Exception
    def moveUp()
        self.setLastDirection(@directionFactory.UP)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    

    # throws Exception
    def dive()
        @directionalInterface.setFrameByDirection(@directionOfTarget)
        @aiVistor.visit(self)
    end
    

    # throws Exception
    def attack()
        self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
    end
    

    # throws Exception
    def drop()
        if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            @initialDropped = true
            @aiVistor.visit(self)
        end
    end
    

    def isBeyondTarget()
        if @directionOfTarget == @directionFactory.DOWN
            if self.getOwnerLayerInterface().getYP() > @lastTrackingLayerInterface.getYP() + @MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.UP
            if self.getOwnerLayerInterface().getYP() < @lastTrackingLayerInterface.getYP() + @MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.RIGHT
            if self.getOwnerLayerInterface().getXP() > @lastTrackingLayerInterface.getXP() + @MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.LEFT
            if self.getOwnerLayerInterface().getXP() < @lastTrackingLayerInterface.getXP() + @MIN_DISTANCE
                return true
            else
                return false
            end
        else
            return false
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onMovement(trackingEvent)
        @list.add(trackingEvent)
    end
    

    def onDestroyed(destroyedEvent)
        if self.getOwnerLayerInterface() == destroyedEvent.getLayerInterface()
            TrackingEventHandler.getInstance().removeListener(self)
            DestroyedEventHandler.getInstance().removeListener(self)
        end
    end
    

    def setLastDirection(lastDirection)
        @lastDirection = lastDirection
        value = self.getLastDirection().getValue()
        if value < 4
            self.class.superclass.instance_method(:setLastKey).bind(self).call(@directionToKeyMap[value])
        end
    end
    

    def setLastKey(lastKey)
        super(lastKey)
        if self.getLastKey() == Canvas::LEFT
            @lastDirection = DirectionFactory.getInstance().LEFT
        elsif self.getLastKey() == Canvas::DOWN
            @lastDirection = DirectionFactory.getInstance().DOWN
        elsif self.getLastKey() == Canvas::UP
            @lastDirection = DirectionFactory.getInstance().UP
        elsif self.getLastKey() == Canvas::RIGHT
            @lastDirection = DirectionFactory.getInstance().RIGHT
        end
    end
    

    def getLastDirection()
        return @lastDirection
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" LastDirection: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getLastDirection()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/direction/DirectionalCompositeInterface"
require "org/allbinary/direction/DirectionalInterface"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

