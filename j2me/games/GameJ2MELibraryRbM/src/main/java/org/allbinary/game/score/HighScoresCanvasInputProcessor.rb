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
# package org.allbinary.game.score

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Score

class HighScoresCanvasInputProcessor < ::Org::Allbinary::Game::Input::PlayerGameInput
    attr_accessor :highScoresCanvas

    def jfields_org_allbinary_game_score_HighScoresCanvasInputProcessor
        @highScoresCanvas = nil unless instance_variable_defined?(:@highScoresCanvas)
    end
    

    def initialize(highScoresCanvas)
        super(::Org::Allbinary::Util::BasicArrayListD.new(), ::Org::Allbinary::Util::BasicArrayListD.new(), -1)
        jfields_org_allbinary_game_score_HighScoresCanvasInputProcessor
        @highScoresCanvas = highScoresCanvas
    end
    

    def open()
    end
    java_overload :open, 0
    

    def close()
    end
    java_overload :close, 0
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        HighScoresCanvasInputProcessor.superclass.java_super_method(:onPressGameKeyEvent, 1).bind(self).call(gameKeyEvent)
        self.update()
        end
    end
    java_overload :onPressGameKeyEvent, 1
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        HighScoresCanvasInputProcessor.superclass.java_super_method(:onDownGameKeyEvent, 1).bind(self).call(gameKeyEvent)
        self.update()
        end
    end
    java_overload :onDownGameKeyEvent, 1
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        HighScoresCanvasInputProcessor.superclass.java_super_method(:onUpGameKeyEvent, 1).bind(self).call(gameKeyEvent)
        self.update()
        end
    end
    java_overload :onUpGameKeyEvent, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def getHighScoresCanvas()
        return @highScoresCanvas
    end
    java_overload :getHighScoresCanvas, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end

