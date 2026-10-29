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
# package org.allbinary.input.motion.button

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class TouchButton < Paintable
    attr_accessor :logUtil, :commonStrings, :touchButtonInput, :animationInterface, :rawRectangle, :xBorder, :yBorder, :rectangle, :cellPosition, :animationX, :animationY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @touchButtonInput = nil
        @animationInterface = nil
        @rawRectangle = nil
        @xBorder = nil
        @yBorder = nil
        @rectangle = RectangleFactory::SINGLETON
        @cellPosition = nil
        @animationX = 0
        @animationY = 0
    end
    

    def initialize(touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        super()
        initialize_fields
        @touchButtonInput = touchButtonInput
        @animationInterface = animationInterface
        @rawRectangle = rawRectangle
        @cellPosition = cellPosition
        @xBorder = xBorder
        @yBorder = yBorder
        self.updateRectangle()
        @logUtil.putF(StringMaker.new().append("Created: ").append(self.to_s).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @animationX, @animationY)
    end
    

    def updateRectangle()
        begin
            x = @rawRectangle.getWidth() * @cellPosition.getColumn()
            y = @rawRectangle.getHeight() * @cellPosition.getRow()
            pointFactory = PointFactory.getInstance()
            @rectangle = Rectangle.new(pointFactory.createXY(x + @xBorder, y + @yBorder), @rawRectangle.getWidth(), @rawRectangle.getHeight())
            point = @rectangle.getPoint()
            @animationX = point.getX()
            @animationY = point.getY()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
    

    def getCellPositionP()
        return @cellPosition
    end
    

    def getRectangleP()
        return @rectangle
    end
    

    def getTouchButtonInput()
        return @touchButtonInput
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(@rectangle))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(@cellPosition))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(@xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(@yBorder)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationInterface"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/motion/button/TouchButtonInput"

