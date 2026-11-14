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
# package org.allbinary.graphics.canvas.transition.progress

require "org/allbinary/graphics/paint/Paintable"

#Was a nested class of ProgressCanvas. It paints the gauge of its ProgressCanvas.
class ProgressPaintable < Paintable
    attr_accessor :progressCanvas

    def initialize_fields
        @progressCanvas = nil
    end
    

    def initialize(progressCanvas)
        super()
        initialize_fields
        @progressCanvas = progressCanvas
    end
    

    def paint(graphics)
        @progressCanvas.paint2(graphics)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

