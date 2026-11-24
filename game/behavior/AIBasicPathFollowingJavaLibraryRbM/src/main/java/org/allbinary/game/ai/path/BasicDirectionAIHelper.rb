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


module ::Org; module Allbinary; module Game; module Ai; module Path

class BasicDirectionAIHelper
    attr_accessor :name, :angleInfo

    def jfields_org_allbinary_game_ai_path_BasicDirectionAIHelper
        @name = nil unless instance_variable_defined?(:@name)
        @angleInfo = nil unless instance_variable_defined?(:@angleInfo)
    end
    

    def initialize(name, angleInfo)
        jfields_org_allbinary_game_ai_path_BasicDirectionAIHelper
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
                keyDirection = ::Javax::Microedition::Lcdui::Canvas::LEFT
            elsif angle < directionAngle
                keyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
            end
        else
            if angle > directionAngle
                keyDirection = ::Javax::Microedition::Lcdui::Canvas::RIGHT
            elsif angle < directionAngle
                keyDirection = ::Javax::Microedition::Lcdui::Canvas::LEFT
            end
        end
        return keyDirection
    end
    

    def getAIKeyPressed(frame)
        angle = ((((@angleInfo.getAngleIncrementInfo().getFrameAngle(frame.to_i)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)
        if @angleInfo.getAngle() != angle
            return self.turnAI(frame.to_i)
        else
            return ::Javax::Microedition::Lcdui::Canvas::UP
        end
    end
    

    def getAIKeyPressedFromDirection(geographicMapDirectionData)
        keyDirection = -1
        angleIncrementInfo = @angleInfo.getAngleIncrementInfo()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo" unless const_defined?(:AngleIncrementInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end

end; end; end; end; end

