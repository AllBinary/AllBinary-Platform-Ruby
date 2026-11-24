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

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/animation/AnimationInterface"

module ::Org; module Allbinary; module Animation

class Animation
    include AnimationInterface
    include ::Org::Allbinary::Image::Opengles::OpenGLSurfaceChangedInterface
    attr_accessor :basicSetColorUtil, :basicColor, :colorP, :changeBasicColorP, :changeColorP, :alphaP

    def jfields_org_allbinary_animation_Animation
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @colorP = 0 unless instance_variable_defined?(:@colorP)
        @changeBasicColorP = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().NULL_COLOR
        @changeColorP = 0 unless instance_variable_defined?(:@changeColorP)
        @alphaP = 0 unless instance_variable_defined?(:@alphaP)
    end
    

    def initialize()
        jfields_org_allbinary_animation_Animation
    end
    

    def setAlpha(alpha)
        @alphaP = alpha
    end
    java_overload :setAlpha, 1
    

    # throws Exception
    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
    end
    java_overload :paintThreedXYZ, 4
    

    def isThreed()
        return false
    end
    java_overload :isThreed, 0
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        @colorP = @basicColor.to_i
    end
    java_overload :setBasicColorP, 1
    

    def setBackgroundBasicColorP(basicColor)
    end
    java_overload :setBackgroundBasicColorP, 1
    

    def getChangeBasicColor()
        return @changeBasicColorP
    end
    java_overload :getChangeBasicColor, 0
    

    def changeBasicColor(basicColor)
        @changeBasicColorP = basicColor
        @changeColorP = @changeBasicColorP.to_i
    end
    java_overload :changeBasicColor, 1
    

    def getChangeColor()
        return @changeColorP
    end
    java_overload :getChangeColor, 0
    

    def getColor()
        return @colorP
    end
    java_overload :getColor, 0
    

    def setScale(scaleX, scaleY)
    end
    java_overload :setScale, 2
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    java_overload :setMaxScale, 2
    

    # throws Exception
    def set(gl)
    end
    java_overload :set, 1
    

    def setDx(dx)
    end
    java_overload :setDx, 1
    

    def getDx()
        return 0
    end
    java_overload :getDx, 0
    

    def setDy(dy)
    end
    java_overload :setDy, 1
    

    def getDy()
        return 0
    end
    java_overload :getDy, 0
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end

end; end; end

