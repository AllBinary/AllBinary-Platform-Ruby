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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class ProgressPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :progressCanvas

    def jfields_org_allbinary_graphics_canvas_transition_progress_ProgressPaintable
        @progressCanvas = nil unless instance_variable_defined?(:@progressCanvas)
    end
    

    def initialize(progressCanvas)
        super()
        jfields_org_allbinary_graphics_canvas_transition_progress_ProgressPaintable
        @progressCanvas = progressCanvas
    end
    

    def paint(graphics)
        @progressCanvas.paint2(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false)

end; end; end; end; end; end

