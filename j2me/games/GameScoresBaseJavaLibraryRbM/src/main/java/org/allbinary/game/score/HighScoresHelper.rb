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

class HighScoresHelper < HighScoresHelperBase
    attr_accessor :circularIndexUtil, :lastIndex

    def initialize_fields
        @circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
        @lastIndex = -1
    end

    def initialize
        super()
        initialize_fields
    end
    

    def setHighScoresArray(highScoresArrayP)
        super(highScoresArrayP)
        @circularIndexUtil.setSize(@highScoresArrayP.length)
    end
    

    def getNextHighScores()
        highScores = @highScoresArrayP[@circularIndexUtil.getIndex()]
        index = 0
        while (highScores.getTotal() < 1 || @lastIndex == @circularIndexUtil.getIndex()) && index < @highScoresArrayP.length
            @circularIndexUtil.next_()
            highScores = @highScoresArrayP[@circularIndexUtil.getIndex()]
            index += 1
        end
        @lastIndex = @circularIndexUtil.getIndex()
        return highScores
    end
    

    def isAnyHighScores()
        if @highScoresArrayP.length < 1
            return false
        end
        anyScores = false
        highScores = nil
        (@highScoresArrayP.length - 1).step(0, -(1)) do |index|
            highScores = @highScoresArrayP[index]
            if highScores.getTotal() > 0
                anyScores = true
            end
        end
        return anyScores
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/game/score/HighScores"

