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
require "org/allbinary/ai/ArtificialIntelligenceTransitionInterface"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class HorizontaRotationManeuverAI < ::Org::Allbinary::Game::Ai::BasicAI
    include ::Org::Allbinary::Ai::ArtificialIntelligenceTransitionInterface
    attr_accessor :circularIndexUtil, :currentSpeedDivisor, :rotationAnimationInterface, :baseVelocityInterface, :velocityInterface

    def jfields_org_allbinary_game_ag_ai_HorizontaRotationManeuverAI
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstanceAt(10, 2147483647)
        @currentSpeedDivisor = 5
        @rotationAnimationInterface = nil unless instance_variable_defined?(:@rotationAnimationInterface)
        @baseVelocityInterface = nil unless instance_variable_defined?(:@baseVelocityInterface)
        @velocityInterface = nil unless instance_variable_defined?(:@velocityInterface)
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_HorizontaRotationManeuverAI
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
    java_overload :transition, 0
    

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
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if ownerLayerInterface.getX2() + ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.to_i
            self.reverse()
            self.accelerate()
            self.drop()
        end
        index = @circularIndexUtil.getIndex()
        if index % @currentSpeedDivisor == 0 && index % 2 == 0
            HorizontaRotationManeuverAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::UP)
            @velocityInterface.limitMaxXYVelocity(@velocityInterface.getMaxForwardVelocity() / @currentSpeedDivisor)
        end
        @circularIndexUtil.next_()
        if frame == angleIncrementInfo.LEFT_FRAME.to_i
            HorizontaRotationManeuverAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM0)
        elsif frame == angleIncrementInfo.RIGHT_FRAME.to_i
            HorizontaRotationManeuverAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_POUND)
        end
    end
    java_overload :processAI, 1
    

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
    java_overload :reverse, 0
    

    def accelerate()
        if @currentSpeedDivisor > 1
            @currentSpeedDivisor -= 1
        end
    end
    java_overload :accelerate, 0
    

    def drop()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        ownerLayerInterface = self.getOwnerLayerInterface()
        y = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > displayInfo.getLastHeight()
            y = 0
        else
            y += ownerLayerInterface.getHeight() + 1
        end
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    end
    java_overload :drop, 0
    

    def getId()
        return ::Org::Allbinary::Ai::ArtificialIntelligence::AI_ID
    end
    java_overload :getId, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence" unless const_defined?(:ArtificialIntelligence, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimationInterface, "org/allbinary/animation/RotationAnimationInterface" unless const_defined?(:RotationAnimationInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimationInterfaceCompositeInterface, "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface" unless const_defined?(:RotationAnimationInterfaceCompositeInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterface, "org/allbinary/game/physics/velocity/VelocityInterface" unless const_defined?(:VelocityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo" unless const_defined?(:AngleIncrementInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end; end

