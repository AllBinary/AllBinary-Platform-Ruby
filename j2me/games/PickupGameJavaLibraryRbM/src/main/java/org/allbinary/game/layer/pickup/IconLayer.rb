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
# package org.allbinary.game.layer.pickup

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/layer/AllBinaryLayer"

class IconLayer < AllBinaryLayer
    attr_accessor :animationInterface

    def initialize_fields
        @animationInterface = nil
    end
    

    def initialize(animationInterface, width, height)
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        initialize_fields
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @x, @y)
    end
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, @x, @y, @z)
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/view/ViewPosition"

class IconLayer
    NULL_ICON_LAYER = IconLayer.new(NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0)
end

