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

require "org/allbinary/game/score/HighScoresFactoryInterface"

class HighScoresBase
    include HighScoresFactoryInterface
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        raise RuntimeError.new()
    end
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        raise RuntimeError.new()
    end
    

    def createHighScoresHelper()
        raise RuntimeError.new()
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresResultsListener"

