# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

require "org/allbinary/game/score/HighScoresResultsListener"

module HighScoresHelperBaseInterface
    include HighScoresResultsListener
    

    def setSelectedHighScores(selectedHighScores)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHighScoresArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSelectedHighScores()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :HighScores, "org/allbinary/game/score/HighScores"

