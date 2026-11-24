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

require "java/lang/JavaOverload"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"
require "org/allbinary/game/ag/ai/scroller/BasePatrolAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class PacePatrolAI < BasePatrolAI
    include ::Org::Allbinary::Game::Tracking::TrackingEventListenerInterface
    attr_accessor :trackingList, :firingDistance, :isFollowLimitedByTerrain

    def jfields_org_allbinary_game_ag_ai_scroller_PacePatrolAI
        @trackingList = nil unless instance_variable_defined?(:@trackingList)
        @firingDistance = 0 unless instance_variable_defined?(:@firingDistance)
        @isFollowLimitedByTerrain = false
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_PacePatrolAI
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().addListenerInterface(self)
        @trackingList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.update()
        direction = self.setFiringDirectionForTargetIfInRange()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
        if direction == directionFactory.LEFT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                PacePatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::LEFT)
            end
            @keyDirection = ::Javax::Microedition::Lcdui::Canvas::LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            PacePatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
        elsif direction == directionFactory.RIGHT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                PacePatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::RIGHT)
            end
            @keyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            PacePatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
        else
            PacePatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(@keyDirection)
        end
    end
    java_overload :processAI, 1
    

    def setFiringDirectionForTargetIfInRange()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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
    java_overload :setFiringDirectionForTargetIfInRange, 0
    

    def disable()
    end
    java_overload :disable, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onMovement(trackingEvent)
        @trackingList.clear()
        @trackingList.add(trackingEvent)
    end
    java_overload :onMovement, 1
    

    def getFiringDistance()
        return @firingDistance
    end
    java_overload :getFiringDistance, 0
    

    def setFiringDistance(firingDistance)
        @firingDistance = firingDistance
    end
    java_overload :setFiringDistance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionCompositeInterface, "org/allbinary/direction/DirectionCompositeInterface" unless const_defined?(:DirectionCompositeInterface, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterface, "org/allbinary/layer/LayerInterface" unless const_defined?(:LayerInterface, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

