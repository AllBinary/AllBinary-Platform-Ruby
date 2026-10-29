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
# package org.allbinary.animation

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/animation/AnimationInterface"

class Animation
    include AnimationInterface
    include OpenGLSurfaceChangedInterface
    attr_accessor :basicSetColorUtil, :basicColor, :colorP, :changeBasicColorP, :changeColorP, :alphaP

    def initialize_fields
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @basicColor = BasicColorFactory.getInstance().WHITE
        @colorP = 0
        @changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR
        @changeColorP = 0
        @alphaP = 0
    end
    

    def initialize()
        initialize_fields
    end
    

    def setAlpha(alpha)
        @alphaP = alpha
    end
    

    # throws Exception
    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
    end
    

    def paintThreedXYZ(graphics, x, y, z)
    end
    

    def isThreed()
        return false
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        @colorP = @basicColor.to_i
    end
    

    def setBackgroundBasicColorP(basicColor)
    end
    

    def getChangeBasicColor()
        return @changeBasicColorP
    end
    

    def changeBasicColor(basicColor)
        @changeBasicColorP = basicColor
        @changeColorP = @changeBasicColorP.to_i
    end
    

    def getChangeColor()
        return @changeColorP
    end
    

    def getColor()
        return @colorP
    end
    

    def setScale(scaleX, scaleY)
    end
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    

    # throws Exception
    def set(gl)
    end
    

    def setDx(dx)
    end
    

    def getDx()
        return 0
    end
    

    def setDy(dy)
    end
    

    def getDy()
        return 0
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"

