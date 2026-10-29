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


module HighScoresFactoryInterface
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        raise NotImplementedError
    end
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        raise NotImplementedError
    end
    

    def createHighScoresHelper()
        raise NotImplementedError
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresResultsListener"

