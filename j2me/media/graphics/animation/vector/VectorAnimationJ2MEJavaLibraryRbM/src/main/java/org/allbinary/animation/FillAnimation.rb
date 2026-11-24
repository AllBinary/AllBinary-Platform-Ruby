# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation

class FillAnimation < IndexedAnimation
    attr_accessor :pixelBuffer, :width, :height

    def jfields_org_allbinary_animation_FillAnimation
        @pixelBuffer = nil unless instance_variable_defined?(:@pixelBuffer)
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
    end
    

    def initialize(pixelBuffer, width, height, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_FillAnimation
        @width = 100
        @height = 100
        @pixelBuffer = pixelBuffer
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        FillAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :setBasicColorP, 1
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        FillAnimation.superclass.java_super_method(:changeBasicColor, 1).bind(self).call(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :changeBasicColor, 1
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        FillAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :setAlpha, 1
    

    def setScale(scaleX, scaleY)
    end
    java_overload :setScale, 2
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    java_overload :setMaxScale, 2
    

    def updateModifiers()
    end
    java_overload :updateModifiers, 0
    

    def paint(g)
        g.drawRGB(@pixelBuffer, 0, @width, 0, 0, @width, @height, true)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

