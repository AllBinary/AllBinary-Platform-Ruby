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
# package org.allbinary.graphics.paint

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

class AnimationCompositePaintable < InitUpdatePaintable
    attr_accessor :animationInterface

    def initialize_fields
        @animationInterface = nil
    end
    

    def initialize(animationInterface)
        super()
        initialize_fields
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, 0, 0)
    end
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
end

require "org/allbinary/animation/Animation"

