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
# package org.allbinary.game.ag.layer.pickup.points

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/layer/AllBinaryLayer"

class PointsLayer < AllBinaryLayer
    attr_accessor :points

    def initialize_fields
        @points = nil
    end
    

    def initialize(points)
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
        initialize_fields
        @points = points
    end
    

    def paint(graphics)
    end
    

    def visit(scoreableInterface)
        scoreableInterface.addPoints(@points)
    end
end

require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/view/ViewPosition"

