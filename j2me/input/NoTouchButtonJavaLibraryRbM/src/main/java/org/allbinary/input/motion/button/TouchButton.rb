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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButton < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :logUtil, :commonStrings, :touchButtonInput, :animationInterface, :rawRectangle, :xBorder, :yBorder, :rectangle, :cellPosition, :animationX, :animationY

    def jfields_org_allbinary_input_motion_button_TouchButton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @touchButtonInput = nil unless instance_variable_defined?(:@touchButtonInput)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @rawRectangle = nil unless instance_variable_defined?(:@rawRectangle)
        @xBorder = nil unless instance_variable_defined?(:@xBorder)
        @yBorder = nil unless instance_variable_defined?(:@yBorder)
        @rectangle = ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON
        @cellPosition = nil unless instance_variable_defined?(:@cellPosition)
        @animationX = 0 unless instance_variable_defined?(:@animationX)
        @animationY = 0 unless instance_variable_defined?(:@animationY)
    end
    

    def initialize(touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        super()
        jfields_org_allbinary_input_motion_button_TouchButton
        @touchButtonInput = touchButtonInput
        @animationInterface = animationInterface
        @rawRectangle = rawRectangle
        @cellPosition = cellPosition
        @xBorder = xBorder
        @yBorder = yBorder
        self.updateRectangle()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Created: ").append(self.to_s).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @animationX, @animationY)
    end
    java_overload :paint, 1
    

    def updateRectangle()
        begin
            x = @rawRectangle.getWidth() * @cellPosition.getColumn()
            y = @rawRectangle.getHeight() * @cellPosition.getRow()
            pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
            @rectangle = ::Org::Allbinary::Graphics::Rectangle.new(pointFactory.createXY(x + @xBorder, y + @yBorder), @rawRectangle.getWidth(), @rawRectangle.getHeight())
            point = @rectangle.getPoint()
            @animationX = point.getX()
            @animationY = point.getY()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
    java_overload :updateRectangle, 0
    

    def getCellPositionP()
        return @cellPosition
    end
    java_overload :getCellPositionP, 0
    

    def getRectangleP()
        return @rectangle
    end
    java_overload :getRectangleP, 0
    

    def getTouchButtonInput()
        return @touchButtonInput
    end
    java_overload :getTouchButtonInput, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterface, "org/allbinary/animation/AnimationInterface" unless const_defined?(:AnimationInterface, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)

end; end; end; end; end

