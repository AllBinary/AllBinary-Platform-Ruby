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
# package org.allbinary.game.ai.path

# require "javax/microedition/lcdui/Canvas"

class BasicDirectionAIHelper
    attr_accessor :name, :angleInfo

    def initialize_fields
        @name = nil
        @angleInfo = nil
    end
    

    def initialize(name, angleInfo)
        initialize_fields
        @name = name
        @angleInfo = angleInfo
    end
    

    def turnAI(frame)
        keyDirection = -1
        directionAngle = @angleInfo.getAngleIncrementInfo().getFrameAngle(frame)
        angle = @angleInfo.getAngle()
        degrees = (directionAngle - angle).abs
        if degrees < 180
            if angle > directionAngle
                keyDirection = Canvas::LEFT
            elsif angle < directionAngle
                keyDirection = Canvas::RIGHT
            end
        else
            if angle > directionAngle
                keyDirection = Canvas::RIGHT
            elsif angle < directionAngle
                keyDirection = Canvas::LEFT
            end
        end
        return keyDirection
    end
    

    def getAIKeyPressed(frame)
        angle = (((@angleInfo.getAngleIncrementInfo().getFrameAngle(frame.to_i)).to_i + 32768) % 65536 - 32768)
        if @angleInfo.getAngle() != angle
            return self.turnAI(frame.to_i)
        else
            return Canvas::UP
        end
    end
    

    def getAIKeyPressedFromDirection(geographicMapDirectionData)
        keyDirection = -1
        angleIncrementInfo = @angleInfo.getAngleIncrementInfo()
        directionFactory = DirectionFactory.getInstance()
        if geographicMapDirectionData == directionFactory.DOWN
            keyDirection = self.getAIKeyPressed(angleIncrementInfo.DOWN_FRAME)
        elsif geographicMapDirectionData == directionFactory.UP
            keyDirection = self.getAIKeyPressed(angleIncrementInfo.UP_FRAME)
        elsif geographicMapDirectionData == directionFactory.LEFT
            keyDirection = self.getAIKeyPressed(angleIncrementInfo.LEFT_FRAME)
        elsif geographicMapDirectionData == directionFactory.RIGHT
            keyDirection = self.getAIKeyPressed(angleIncrementInfo.RIGHT_FRAME)
        end
        return keyDirection
    end
    

    def getAngleInfoP()
        return @angleInfo
    end
    

    def getName()
        return @name
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/math/AngleIncrementInfo"
require "org/allbinary/math/AngleInfo"

