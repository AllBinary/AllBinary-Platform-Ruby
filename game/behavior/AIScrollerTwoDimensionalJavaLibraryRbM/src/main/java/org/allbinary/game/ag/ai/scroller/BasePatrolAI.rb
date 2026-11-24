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
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class BasePatrolAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :maxDistance, :currentDistance, :xTotalDistance, :lastKeyDirection, :keyDirection

    def jfields_org_allbinary_game_ag_ai_scroller_BasePatrolAI
        @maxDistance = nil unless instance_variable_defined?(:@maxDistance)
        @currentDistance = nil unless instance_variable_defined?(:@currentDistance)
        @xTotalDistance = 0 unless instance_variable_defined?(:@xTotalDistance)
        @lastKeyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
        @keyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_BasePatrolAI
        @maxDistance = hashtable.get(BasePatrolAI::MAX_DISTANCE)
        @currentDistance = @maxDistance.to_i
    end
    

    def update()
        self.updateTotalDistance()
        self.changeDirectionIfReachedPacingAreaMax()
    end
    java_overload :update, 0
    

    def updateTotalDistance()
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        @xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled()
    end
    java_overload :updateTotalDistance, 0
    

    def changeDirectionIfReachedPacingAreaMax()
        mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        totalDistance = mathUtil.abs(@xTotalDistance)
        if totalDistance > @currentDistance
            self.nextDirection()
        end
    end
    java_overload :changeDirectionIfReachedPacingAreaMax, 0
    

    def nextDirection()
        if @lastKeyDirection == ::Javax::Microedition::Lcdui::Canvas::LEFT
            @keyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        elsif @lastKeyDirection == ::Javax::Microedition::Lcdui::Canvas::RIGHT
            @keyDirection = ::Javax::Microedition::Lcdui::Canvas::LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        end
    end
    java_overload :nextDirection, 0
    

    def disable()
    end
    java_overload :disable, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:MAX_DISTANCE, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2))
            const_set(:DIRECTION_ARRAY, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(3))
            const_set(:FIRING_DISTANCE, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(4))
            const_set(:SPEED, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(5))
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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    BasePatrolAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

