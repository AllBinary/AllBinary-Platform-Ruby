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
# package org.allbinary.animation.vector

require "java/lang/JavaOverload"
require "org/allbinary/animation/vector/CircleAnimation"

module ::Org; module Allbinary; module Animation; module Vector

class AdjustedCircleAnimation < CircleAnimation
    attr_accessor :xAdjustment, :yAdjustment

    def jfields_org_allbinary_animation_vector_AdjustedCircleAnimation
        @xAdjustment = 0 unless instance_variable_defined?(:@xAdjustment)
        @yAdjustment = 0 unless instance_variable_defined?(:@yAdjustment)
    end
    

    def self.createAnimation(width, height, xAdjustment, yAdjustment, basicColor)
        adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation
    end
    

    def self.createW(width, height, innerWidth, basicColor)
        adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.init(innerWidth)
        return adjustedCircleAnimation
    end
    

    def initialize(width, height, basicColor)
        super(width, height, basicColor)
        jfields_org_allbinary_animation_vector_AdjustedCircleAnimation
    end
    

    def initXY(xAdjustment, yAdjustment)
        @xAdjustment = xAdjustment
        @yAdjustment = yAdjustment
    end
    java_overload :initXY, 2
    

    def init(innerWidth)
        if ::Org::Allbinary::AndroidUtil.isAndroid()
            widthPortion = (((innerWidth / 3) * 10) / 7)
            @xAdjustment = -(@width >> 1) - widthPortion
            @yAdjustment = @xAdjustment
        else
            @xAdjustment = -(@width >> 1) - innerWidth
            @yAdjustment = @xAdjustment
        end
    end
    java_overload :init, 1
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawArc(x + @xAdjustment, y + @yAdjustment, @width, @height, 0, @TOTAL_ANGLE)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

