# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.caption

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/Animation"

class CaptionAnimationHelperBase < Animation
    

    def isShowing()
        return false
    end
    

    def tick()
    end
    

    def update(message, basicColor)
    end
    

    def paintXY(graphics, x, y)
    end
end

require "org/allbinary/graphics/color/BasicColor"

class CaptionAnimationHelperBase
    INSTANCE = CaptionAnimationHelperBase.new()
end

