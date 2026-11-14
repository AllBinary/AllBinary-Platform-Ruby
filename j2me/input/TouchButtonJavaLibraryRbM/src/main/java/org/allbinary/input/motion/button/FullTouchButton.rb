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

require "org/allbinary/input/motion/button/TouchButton"

class FullTouchButton < TouchButton
    

    # throws Exception
    def self.createButton(touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder)
        return FullTouchButton.new(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    end
    

    def initialize(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        super(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    end
    

    def updateRectangle()
        begin
            pointFactory = PointFactory.getInstance()
            x = @rawRectangle.getWidth() * @cellPositionP.getColumn()
            y = @rawRectangle.getHeight() * @cellPositionP.getRow()
            @rectangleP = Rectangle.new(pointFactory.createXY(x, y), @rawRectangle.getWidth() + (2 * @xBorder), @rawRectangle.getHeight() + (2 * @yBorder))
            point = @rectangleP.getPoint()
            @animationX = point.getX() + @xBorder
            @animationY = point.getY() + @yBorder
            @hintAnimationY = @animationY - @rectangleP.getHeight() >> 1
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :CellPosition, "org/allbinary/graphics/CellPosition"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"
autoload :TouchButtonResource, "org/allbinary/input/motion/button/TouchButtonResource"

