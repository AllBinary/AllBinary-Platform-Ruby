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
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :gameCanvas

    def jfields_org_allbinary_game_displayable_canvas_GameProcessor
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
    end
    

    def initialize(gameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_GameProcessor
        @gameCanvas = gameCanvas
    end
    

    # throws Exception
    def process()
        @gameCanvas.processPlayingGame()
    end
    java_overload :process, 0
end

autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

