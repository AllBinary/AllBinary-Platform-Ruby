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


module HighScoresInterface
    

    def getList()
        raise NotImplementedError
    end
    

    def addHighScore(newHighScore)
        raise NotImplementedError
    end
    

    def getTotal()
        raise NotImplementedError
    end
    

    # throws Exception
    def isBestScore(newHighScore)
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/score/HighScore"

