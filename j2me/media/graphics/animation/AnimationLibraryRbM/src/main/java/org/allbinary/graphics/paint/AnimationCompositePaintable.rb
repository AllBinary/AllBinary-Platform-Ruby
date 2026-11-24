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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

module ::Org; module Allbinary; module Graphics; module Paint

class AnimationCompositePaintable < InitUpdatePaintable
    attr_accessor :animationInterface

    def jfields_org_allbinary_graphics_paint_AnimationCompositePaintable
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(animationInterface)
        super()
        jfields_org_allbinary_graphics_paint_AnimationCompositePaintable
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, 0, 0)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end

end; end; end; end

