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

require "org/allbinary/bounds/BoundsVisitorInterface"

class ReverseVelocityBoundsVisitor
    include BoundsVisitorInterface
    attr_accessor :logUtil, :velocityInterface, :layerInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @velocityInterface = nil
        @layerInterface = nil
    end
    

    def initialize(layerInterface)
        initialize_fields
        @layerInterface = layerInterface
        velocityInterfaceCompositeInterface = layerInterface
        @velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
    end
    

    def getX()
        return @layerInterface.getXP()
    end
    

    def getY()
        return @layerInterface.getYP()
    end
    

    def minX()
        if @velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0
            @velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        end
    end
    

    def maxX()
        if @velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0
            @velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        end
    end
    

    def minY()
        if @velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0
            @velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        end
    end
    

    def maxY()
        if @velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0
            @velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        end
    end
end

require "org/allbinary/game/physics/velocity/VelocityInterface"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/layer/LayerInterface"
require "org/allbinary/logic/communication/log/LogUtil"

