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

require "org/allbinary/canvas/Processor"

class EndGameProcessor < Processor
    attr_accessor :gameStateFactory, :gameCanvas, :WAIT

    def initialize_fields
        @gameStateFactory = GameStateFactory.getInstance()
        @gameCanvas = nil
        @WAIT = 5000
    end
    

    def initialize(gameCanvas)
        super()
        initialize_fields
        @gameCanvas = gameCanvas
    end
    

    # throws Exception
    def process()
        if @gameCanvas.isHighScoreSubmitted()
            if @gameCanvas.getGameStateTimeHelper().isElapsedTNT(@WAIT)
                if @gameCanvas.getGameState() == @gameStateFactory.SHOW_END_RESULT_GAME_STATE
                    highScoresBase = @gameCanvas.highScoresHelper
                    highScores = highScoresBase.getSelectedHighScores()
                    if highScores != NullHighScoresSingletonFactory.getInstance()
                        highScoresBase.selectHighScores()
                        @gameCanvas.getRealHighScoresPaintable().setHighScores(highScores)
                        @gameCanvas.setGameState(@gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        @gameCanvas.setHighScoresPaintable(@gameCanvas.getRealHighScoresPaintable())
                    end
                elsif @gameCanvas.getGameState() == @gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
                    @gameCanvas.setGameState(@gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    @gameCanvas.setHighScoresPaintable(NullPaintable.getInstance())
                end
            end
        end
    end
end

require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresHelperBase"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

