# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/IndexedAnimation"

class FillAnimation < IndexedAnimation
    attr_accessor :pixelBuffer, :width, :height

    def initialize_fields
        @pixelBuffer = nil
        @width = nil
        @height = nil
    end
    

    def initialize(pixelBuffer, width, height, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @width = 100
        @height = 100
        @pixelBuffer = pixelBuffer
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        if changed
            self.updateModifiers()
        end
    end
    

    def setScale(scaleX, scaleY)
    end
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    

    def updateModifiers()
    end
    

    def paint(g)
        g.drawRGB(@pixelBuffer, 0, @width, 0, 0, @width, @height, true)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/animation/AnimationBehavior"

