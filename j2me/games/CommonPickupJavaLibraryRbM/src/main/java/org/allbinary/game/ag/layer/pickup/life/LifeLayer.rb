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
# package org.allbinary.game.ag.layer.pickup.life

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/ag/life/LifeVisitorInterface"
require "org/allbinary/layer/AllBinaryLayer"

class LifeLayer < AllBinaryLayer
    include LifeVisitorInterface
    

    def initialize()
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    end
    

    def paint(graphics)
    end
    

    def visit(lifeInterface)
        lifeInterface.add((((1).to_i + 32768) % 65536 - 32768))
    end
end

require "org/allbinary/game/ag/life/Life"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/view/ViewPosition"

