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

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class DiveAndDirectionalTrackingAI < ::Org::Allbinary::Game::Ai::BasicAI
    include ::Org::Allbinary::Game::Tracking::TrackingEventListenerInterface
    include ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventListenerInterface
    attr_accessor :mathUtil, :directionFactory, :gameTickTimeDelayHelper, :timeDelayHelper, :list, :directionalInterface, :velocityInterface, :directionToKeyMap, :initialDropped, :diveP, :directionOfTarget, :MIN_DISTANCE, :lastTrackingLayerInterface, :artificialIntelligenceInterface, :aiVistor, :lastDirection

    def jfields_org_allbinary_game_ag_ai_DiveAndDirectionalTrackingAI
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        @directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(500)
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @directionalInterface = nil unless instance_variable_defined?(:@directionalInterface)
        @velocityInterface = nil unless instance_variable_defined?(:@velocityInterface)
        @directionToKeyMap = [::Javax::Microedition::Lcdui::Canvas::LEFT, ::Javax::Microedition::Lcdui::Canvas::DOWN, ::Javax::Microedition::Lcdui::Canvas::UP, ::Javax::Microedition::Lcdui::Canvas::RIGHT]
        @initialDropped = false unless instance_variable_defined?(:@initialDropped)
        @diveP = false unless instance_variable_defined?(:@diveP)
        @directionOfTarget = ::Org::Allbinary::Direction::Direction.getInstance(0)
        @MIN_DISTANCE = 40
        @lastTrackingLayerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        @artificialIntelligenceInterface = nil unless instance_variable_defined?(:@artificialIntelligenceInterface)
        @aiVistor = nil unless instance_variable_defined?(:@aiVistor)
        @lastDirection = ::Org::Allbinary::Direction::DirectionFactory.getInstance().NO_DIRECTION
    end
    

    def initialize(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_DiveAndDirectionalTrackingAI
        @aiVistor = visitor
        @artificialIntelligenceInterface = artificialIntelligenceInterface
        directionalCompositeInterface = self.getOwnerLayerInterface()
        @directionalInterface = directionalCompositeInterface.getDirectionalInterface()
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance().addListenerInterface(self)
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
    java_overload :processAI, 1
    

    def init()
        @diveP = false
        @directionOfTarget = ::Org::Allbinary::Direction::DirectionFactory.getInstance().NOT_BORDERED_WITH
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().addListenerInterface(self)
    end
    java_overload :init, 0
    

    # throws Exception
    def target(allBinaryLayerManager)
        if @list.size() == 0
            return
        end
        lastTrackingEvent = @list.removeAt(0)
        @lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
        layerInterface = @lastTrackingLayerInterface
        ownerLayerInterface = self.getOwnerLayerInterface()
        groupArray = layerInterface.getGroupInterface()
        ownerGroupArray = ownerLayerInterface.getGroupInterface()
        if groupArray == ownerGroupArray
            return
        end
        x = @lastTrackingLayerInterface.getXP()
        y = @lastTrackingLayerInterface.getYP()
        yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight()
        xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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
    java_overload :target, 1
    

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
    java_overload :verticalTargeting, 1
    

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
    java_overload :horizontalTargeting, 1
    

    def setDive()
        @diveP = true
        @velocityInterface.zero()
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().removeListener(self)
    end
    java_overload :setDive, 0
    

    # throws Exception
    def moveRight()
        self.setLastDirection(@directionFactory.RIGHT)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    java_overload :moveRight, 0
    

    # throws Exception
    def moveLeft()
        self.setLastDirection(@directionFactory.LEFT)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    java_overload :moveLeft, 0
    

    # throws Exception
    def moveDown()
        self.setLastDirection(@directionFactory.DOWN)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    java_overload :moveDown, 0
    

    # throws Exception
    def moveUp()
        self.setLastDirection(@directionFactory.UP)
        @directionalInterface.setFrameByDirection(@lastDirection)
        @aiVistor.visit(self)
    end
    java_overload :moveUp, 0
    

    # throws Exception
    def dive()
        @directionalInterface.setFrameByDirection(@directionOfTarget)
        @aiVistor.visit(self)
    end
    java_overload :dive, 0
    

    # throws Exception
    def attack()
        DiveAndDirectionalTrackingAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
    end
    java_overload :attack, 0
    

    # throws Exception
    def drop()
        if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            @initialDropped = true
            @aiVistor.visit(self)
        end
    end
    java_overload :drop, 0
    

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
    java_overload :isBeyondTarget, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onMovement(trackingEvent)
        @list.add(trackingEvent)
    end
    java_overload :onMovement, 1
    

    def onDestroyed(destroyedEvent)
        if self.getOwnerLayerInterface() == destroyedEvent.getLayerInterface()
            ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().removeListener(self)
            ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance().removeListener(self)
        end
    end
    java_overload :onDestroyed, 1
    

    def setLastDirection(lastDirection)
        @lastDirection = lastDirection
        value = self.getLastDirection().getValue()
        if value < 4
            DiveAndDirectionalTrackingAI.superclass.java_super_method(:setLastKey, 1).bind(self).call(@directionToKeyMap[value])
        end
    end
    java_overload :setLastDirection, 1
    

    def setLastKey(lastKey)
        DiveAndDirectionalTrackingAI.superclass.java_super_method(:setLastKey, 1).bind(self).call(lastKey)
        if self.getLastKey() == ::Javax::Microedition::Lcdui::Canvas::LEFT
            @lastDirection = ::Org::Allbinary::Direction::DirectionFactory.getInstance().LEFT
        elsif self.getLastKey() == ::Javax::Microedition::Lcdui::Canvas::DOWN
            @lastDirection = ::Org::Allbinary::Direction::DirectionFactory.getInstance().DOWN
        elsif self.getLastKey() == ::Javax::Microedition::Lcdui::Canvas::UP
            @lastDirection = ::Org::Allbinary::Direction::DirectionFactory.getInstance().UP
        elsif self.getLastKey() == ::Javax::Microedition::Lcdui::Canvas::RIGHT
            @lastDirection = ::Org::Allbinary::Direction::DirectionFactory.getInstance().RIGHT
        end
    end
    java_overload :setLastKey, 1
    

    def getLastDirection()
        return @lastDirection
    end
    java_overload :getLastDirection, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" LastDirection: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getLastDirection()))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionalCompositeInterface, "org/allbinary/direction/DirectionalCompositeInterface" unless const_defined?(:DirectionalCompositeInterface, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionalInterface, "org/allbinary/direction/DirectionalInterface" unless const_defined?(:DirectionalInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler" unless const_defined?(:DestroyedEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end

