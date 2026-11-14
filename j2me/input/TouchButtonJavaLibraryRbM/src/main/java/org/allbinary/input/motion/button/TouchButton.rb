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

require "org/allbinary/graphics/paint/Paintable"

class TouchButton < Paintable
    attr_accessor :logUtil, :commonStrings, :touchButtonInput, :animationInterface, :hintAnimationInterface, :rawRectangle, :xBorder, :yBorder, :rectangleP, :cellPositionP, :animationX, :animationY, :hintAnimationY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @touchButtonInput = nil
        @animationInterface = nil
        @hintAnimationInterface = nil
        @rawRectangle = nil
        @xBorder = nil
        @yBorder = nil
        @rectangleP = RectangleFactory::SINGLETON
        @cellPositionP = nil
        @animationX = 0
        @animationY = 0
        @hintAnimationY = 0
    end
    

    # throws Exception
    def self.createButton(touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder)
        return TouchButton.new(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    end
    

    def initialize(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        super()
        initialize_fields
        @touchButtonInput = touchButtonInput
        @animationInterface = animationInterface
        @hintAnimationInterface = hintAnimationInterface
        @rawRectangle = rawRectangle
        @cellPositionP = cellPosition
        @xBorder = xBorder
        @yBorder = yBorder
        self.updateRectangle()
        @logUtil.putF(StringMaker.new().append("Created: ").append(self.to_s).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def paintHint(graphics)
        @hintAnimationInterface.paintXY(graphics, @animationX, @hintAnimationY)
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @animationX, @animationY)
    end
    

    def updateRectangle()
        begin
            pointFactory = PointFactory.getInstance()
            x = @rawRectangle.getWidth() * @cellPositionP.getColumn()
            y = @rawRectangle.getHeight() * @cellPositionP.getRow()
            @rectangleP = Rectangle.new(pointFactory.createXY(x + @xBorder, y + @yBorder), @rawRectangle.getWidth(), @rawRectangle.getHeight())
            point = @rectangleP.getPoint()
            @animationX = point.getX()
            @animationY = point.getY()
            @hintAnimationY = @animationY - 32
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
    

    def getCellPosition()
        return @cellPositionP
    end
    

    def getRectangle()
        return @rectangleP
    end
    

    def getTouchButtonInput()
        return @touchButtonInput
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(self.getRectangle()))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(@cellPositionP))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(@xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(@yBorder)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :CellPosition, "org/allbinary/graphics/CellPosition"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"
autoload :TouchButtonResource, "org/allbinary/input/motion/button/TouchButtonResource"

