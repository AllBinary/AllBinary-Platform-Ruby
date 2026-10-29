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
# package org.allbinary.game.ag.layer.pickup.health

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/health/HealthVisitorInterface"
require "org/allbinary/layer/AllBinaryLayer"

class HealLayer < AllBinaryLayer
    include HealthVisitorInterface
    

    def initialize()
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    end
    

    def paint(graphics)
    end
    

    def visit(healthInterface)
        if healthInterface.isAlive()
            healthInterface.healMax()
        else
            @logUtil.putF("Heal attempt on dead: Does not currently occur", self, "visit")
        end
    end
end

require "org/allbinary/game/health/HealthInterface"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/view/ViewPosition"

