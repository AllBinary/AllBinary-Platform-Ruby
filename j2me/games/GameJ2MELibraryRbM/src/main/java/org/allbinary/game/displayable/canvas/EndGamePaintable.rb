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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class EndGamePaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :gameCanvas

    def jfields_org_allbinary_game_displayable_canvas_EndGamePaintable
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
    end
    

    def initialize(gameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_EndGamePaintable
        @gameCanvas = gameCanvas
    end
    

    def paint(graphics)
        @gameCanvas.paintGameOver(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

