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

require "org/allbinary/game/layer/behavior/GameLayerBehavior"

class TopViewGameLayerBehavior < GameLayerBehavior
    attr_accessor :maxGravityActionIndex, :isJumpAction, :isJumpOver, :isFallingWithoutJumpAttempt, :gravityActionIndex

    def initialize_fields
        @maxGravityActionIndex = nil
        @isJumpAction = true
        @isJumpOver = false
        @isFallingWithoutJumpAttempt = false
        @gravityActionIndex = 0
    end
    

    def initialize(maxGravityActionIndex)
        super()
        initialize_fields
        @maxGravityActionIndex = maxGravityActionIndex
    end
    

    def gravity()
        if @gravityActionIndex == 0
            @gravityActionIndex += 1
            @isFallingWithoutJumpAttempt = true
        end
    end
    

    def land(velocityProperties)
        velocityProperties.getVelocityYBasicDecimalP().setint(0)
        self.landReset()
    end
    

    def landReset()
        @gravityActionIndex = 0
        @isFallingWithoutJumpAttempt = false
        @isJumpAction = true
        @isJumpOver = false
    end
    

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
    

    def inputFrames(velocityProperties)
        if @gravityActionIndex > 0 && velocityProperties.getVelocityYBasicDecimalP().getUnscaled() > 0
            @isJumpOver = true
        end
    end
end

require "org/allbinary/game/physics/acceleration/BasicAccelerationProperties"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/game/behavior/topview/InitialJumpBehavior"

