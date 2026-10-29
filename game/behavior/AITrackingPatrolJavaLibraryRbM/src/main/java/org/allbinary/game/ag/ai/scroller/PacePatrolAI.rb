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
require "org/allbinary/game/tracking/TrackingEventListenerInterface"
require "org/allbinary/game/ag/ai/scroller/BasePatrolAI"

class PacePatrolAI < BasePatrolAI
    include TrackingEventListenerInterface
    attr_accessor :trackingList, :firingDistance, :isFollowLimitedByTerrain

    def initialize_fields
        @trackingList = nil
        @firingDistance = 0
        @isFollowLimitedByTerrain = false
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        initialize_fields
        TrackingEventHandler.getInstance().addListenerInterface(self)
        @trackingList = BasicArrayListD.new()
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.update()
        direction = self.setFiringDirectionForTargetIfInRange()
        directionFactory = DirectionFactory.getInstance()
        if direction == directionFactory.LEFT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::LEFT)
            end
            @keyDirection = Canvas::LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
        elsif direction == directionFactory.RIGHT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::RIGHT)
            end
            @keyDirection = Canvas::RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
        else
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(@keyDirection)
        end
    end
    

    def setFiringDirectionForTargetIfInRange()
        directionFactory = DirectionFactory.getInstance()
        ownerLayerInterface = self.getOwnerLayerInterface()
        direction = directionFactory.NOT_BORDERED_WITH
        lastTrackingEvent = nil
        lastTrackingLayerInterface = nil
        directionCompositeInterface = nil
        size = @trackingList.size()
        (0...size).each do |index|
            lastTrackingEvent = @trackingList.get(0)
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
            x = lastTrackingLayerInterface.getXP()
            y = lastTrackingLayerInterface.getYP()
            yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight()
            xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth()
            absXDistance = (xDistance).abs
            absYDistance = (yDistance).abs
            if absYDistance <= 100
                if absXDistance < getFiringDistance() / 2
                    directionCompositeInterface = self.getOwnerLayerInterface()
                    if xDistance < 0 && directionCompositeInterface.getDirection() == directionFactory.RIGHT
                        direction = directionFactory.RIGHT
                    elsif xDistance > 0 && directionCompositeInterface.getDirection() == directionFactory.LEFT
                        direction = directionFactory.LEFT
                    end
                end
            end
        end
        return direction
    end
    

    def disable()
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onMovement(trackingEvent)
        @trackingList.clear()
        @trackingList.add(trackingEvent)
    end
    

    def getFiringDistance()
        return @firingDistance
    end
    

    def setFiringDistance(firingDistance)
        @firingDistance = firingDistance
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionCompositeInterface"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/LayerInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

