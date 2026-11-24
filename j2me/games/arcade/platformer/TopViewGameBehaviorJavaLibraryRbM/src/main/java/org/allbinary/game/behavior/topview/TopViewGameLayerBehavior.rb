# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.behavior.topview

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/behavior/GameLayerBehavior"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class TopViewGameLayerBehavior < ::Org::Allbinary::Game::Layer::Behavior::GameLayerBehavior
    attr_accessor :maxGravityActionIndex, :isJumpAction, :isJumpOver, :isFallingWithoutJumpAttempt, :gravityActionIndex

    def jfields_org_allbinary_game_behavior_topview_TopViewGameLayerBehavior
        @maxGravityActionIndex = nil unless instance_variable_defined?(:@maxGravityActionIndex)
        @isJumpAction = true
        @isJumpOver = false
        @isFallingWithoutJumpAttempt = false
        @gravityActionIndex = 0
    end
    

    def initialize(maxGravityActionIndex)
        super()
        jfields_org_allbinary_game_behavior_topview_TopViewGameLayerBehavior
        @maxGravityActionIndex = maxGravityActionIndex
    end
    

    def gravity()
        if @gravityActionIndex == 0
            @gravityActionIndex += 1
            @isFallingWithoutJumpAttempt = true
        end
    end
    java_overload :gravity, 0
    

    def land(velocityProperties)
        velocityProperties.getVelocityYBasicDecimalP().setint(0)
        self.landReset()
    end
    java_overload :land, 1
    

    def landReset()
        @gravityActionIndex = 0
        @isFallingWithoutJumpAttempt = false
        @isJumpAction = true
        @isJumpOver = false
    end
    java_overload :landReset, 0
    

    def up(velocityProperties, acceleration, jumpBehavior, accelerationMultiplier)
        if !@isJumpOver
            if @gravityActionIndex < @maxGravityActionIndex
                acceleration2 = -acceleration.getForward() * accelerationMultiplier
                velocityProperties.getVelocityYBasicDecimalP().addint(acceleration2)
                velocityProperties.limitXYToForwardAndReverseMaxVelocity()
                @gravityActionIndex += 1
            else
            end
        else
        end
        if @isJumpAction
            jumpBehavior.process()
            @isJumpAction = false
        end
    end
    java_overload :up, 4
    

    def inputFrames(velocityProperties)
        if @gravityActionIndex > 0 && velocityProperties.getVelocityYBasicDecimalP().getUnscaled() > 0
            @isJumpOver = true
        end
    end
    java_overload :inputFrames, 1
end

module ::Org; module Allbinary; module Game; module Physics; module Acceleration; autoload :BasicAccelerationProperties, "org/allbinary/game/physics/acceleration/BasicAccelerationProperties" unless const_defined?(:BasicAccelerationProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
autoload :InitialJumpBehavior, "org/allbinary/game/behavior/topview/InitialJumpBehavior" unless const_defined?(:InitialJumpBehavior, false)

end; end; end; end; end

