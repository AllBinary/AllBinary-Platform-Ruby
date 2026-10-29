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
# package org.allbinary.game.ag.ai.tactical

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class HorizontalManeuverAI < BasicAI
    attr_accessor :currentRelativeAngle, :currentSpeed

    def initialize_fields
        @currentRelativeAngle = 0
        @currentSpeed = nil
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @currentSpeed = 5
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        ownerLayerInterface = self.getOwnerLayerInterface()
        x = ownerLayerInterface.getXP()
        if ownerLayerInterface.getXP() - @currentSpeed <= 0
            self.reverse()
            self.drop()
        end
        if ownerLayerInterface.getX2() + @currentSpeed > DisplayInfoSingleton.getInstance().getLastWidth()
            self.reverse()
            self.accelerate()
            self.drop()
        end
        if @currentRelativeAngle == 0
            x += @currentSpeed
        elsif @currentRelativeAngle == 180
            x -= @currentSpeed
        end
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP())
        if @currentRelativeAngle == 0
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM0)
        elsif @currentRelativeAngle == 180
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_POUND)
        end
    end
    

    def reverse()
        if @currentRelativeAngle == 180
            @currentRelativeAngle = 0
        elsif @currentRelativeAngle == 0
            @currentRelativeAngle = 180
        end
    end
    

    def accelerate()
        if @currentSpeed < 20
            @currentSpeed += 1
        end
    end
    

    def drop()
        ownerLayerInterface = self.getOwnerLayerInterface()
        y = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight()
            y = 0
        else
            y += ownerLayerInterface.getHeight() + 1
        end
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

