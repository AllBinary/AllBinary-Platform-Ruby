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

class EndGameProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :gameStateFactory, :gameCanvas, :WAIT

    def jfields_org_allbinary_game_displayable_canvas_EndGameProcessor
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @WAIT = 5000
    end
    

    def initialize(gameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_EndGameProcessor
        @gameCanvas = gameCanvas
    end
    

    # throws Exception
    def process()
        if @gameCanvas.isHighScoreSubmitted()
            if @gameCanvas.getGameStateTimeHelper().isElapsedTNT(@WAIT)
                if @gameCanvas.getGameState() == @gameStateFactory.SHOW_END_RESULT_GAME_STATE
                    highScoresBase = @gameCanvas.highScoresHelper
                    highScores = highScoresBase.getSelectedHighScores()
                    if highScores != ::Org::Allbinary::Game::Score::NullHighScoresSingletonFactory.getInstance()
                        highScoresBase.selectHighScores()
                        @gameCanvas.getRealHighScoresPaintable().setHighScores(highScores)
                        @gameCanvas.setGameState(@gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        @gameCanvas.setHighScoresPaintable(@gameCanvas.getRealHighScoresPaintable())
                    end
                elsif @gameCanvas.getGameState() == @gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
                    @gameCanvas.setGameState(@gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    @gameCanvas.setHighScoresPaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
                end
            end
        end
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Game; module Score; autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelperBase, "org/allbinary/game/score/HighScoresHelperBase" unless const_defined?(:HighScoresHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

