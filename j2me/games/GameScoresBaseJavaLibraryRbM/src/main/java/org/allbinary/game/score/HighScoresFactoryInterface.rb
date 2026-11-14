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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def createHighScoresHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface"
autoload :HighScoresResultsListener, "org/allbinary/game/score/HighScoresResultsListener"

