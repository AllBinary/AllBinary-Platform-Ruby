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
require "org/allbinary/ai/ArtificialIntelligenceTransitionInterface"
require "org/allbinary/game/ai/BasicAI"

class HorizontaRotationManeuverAI < BasicAI
    include ArtificialIntelligenceTransitionInterface
    attr_accessor :circularIndexUtil, :currentSpeedDivisor, :rotationAnimationInterface, :baseVelocityInterface, :velocityInterface

    def initialize_fields
        @circularIndexUtil = CircularIndexUtil.createInstanceAt(10, 2147483647)
        @currentSpeedDivisor = 5
        @rotationAnimationInterface = nil
        @baseVelocityInterface = nil
        @velocityInterface = nil
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        @velocityInterface = @baseVelocityInterface
        rotationAnimationInterface = @rotationAnimationInterface
        angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.to_i)
    end
    

    def transition()
        rotationAnimationInterface = @rotationAnimationInterface
        angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.to_i)
        allbinaryLayer = self.getOwnerLayerInterface()
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP())
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        rotationAnimationInterface = (@rotationAnimationInterface)
        angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        frame = @rotationAnimationInterface.getFrame()
        ownerLayerInterface = self.getOwnerLayerInterface()
        if ownerLayerInterface.getXP() - ownerLayerInterface.getWidth() <= 0 && frame == angleIncrementInfo.LEFT_FRAME.to_i
            self.reverse()
            self.drop()
        end
        displayInfo = DisplayInfoSingleton.getInstance()
        if ownerLayerInterface.getX2() + ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.to_i
            self.reverse()
            self.accelerate()
            self.drop()
        end
        index = @circularIndexUtil.getIndex()
        if index % @currentSpeedDivisor == 0 && index % 2 == 0
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::UP)
            @velocityInterface.limitMaxXYVelocity(@velocityInterface.getMaxForwardVelocity() / @currentSpeedDivisor)
        end
        @circularIndexUtil.next_()
        if frame == angleIncrementInfo.LEFT_FRAME.to_i
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM0)
        elsif frame == angleIncrementInfo.RIGHT_FRAME.to_i
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_POUND)
        end
    end
    

    def reverse()
        rotationAnimationInterface = @rotationAnimationInterface
        angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        frame = @rotationAnimationInterface.getFrame()
        if frame == angleIncrementInfo.LEFT_FRAME.to_i
            rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.to_i)
            @baseVelocityInterface.zero()
        elsif frame == angleIncrementInfo.RIGHT_FRAME.to_i
            rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.to_i)
            @baseVelocityInterface.zero()
        end
    end
    

    def accelerate()
        if @currentSpeedDivisor > 1
            @currentSpeedDivisor -= 1
        end
    end
    

    def drop()
        displayInfo = DisplayInfoSingleton.getInstance()
        ownerLayerInterface = self.getOwnerLayerInterface()
        y = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > displayInfo.getLastHeight()
            y = 0
        else
            y += ownerLayerInterface.getHeight() + 1
        end
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    end
    

    def getId()
        return ArtificialIntelligence::AI_ID
    end
end

require "org/allbinary/ai/ArtificialIntelligence"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/RotationAnimationInterface"
require "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterface"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/math/AngleIncrementInfo"
require "org/allbinary/util/CircularIndexUtil"

