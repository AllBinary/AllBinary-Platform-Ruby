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

require "org/allbinary/game/score/HighScoresHelperBase"

class HighScoresHelper2 < HighScoresHelperBase
    attr_accessor :circularIndexUtil, :selectedHighScores

    def initialize_fields
        @circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
        @selectedHighScores = NullHighScoresSingletonFactory.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def setSelectedHighScores(selectedHighScores)
        @selectedHighScores = selectedHighScores
    end
    

    def getSelectedHighScores()
        return @selectedHighScores
    end
    

    def setHighScoresArray(highScoresArrayP)
        super(highScoresArrayP)
        @circularIndexUtil.setSize(@highScoresArrayP.length)
        self.selectHighScores()
    end
    

    def selectHighScores()
        if @highScoresArrayP.length == 0
            self.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
            return
        end
        @circularIndexUtil.next_()
        highScores = @highScoresArrayP[@circularIndexUtil.getIndex()]
        index = 0
        while highScores.getTotal() < 1 && index < @highScoresArrayP.length
            highScores = @highScoresArrayP[@circularIndexUtil.next_()]
            index += 1
        end
        self.setSelectedHighScores(highScores)
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"

