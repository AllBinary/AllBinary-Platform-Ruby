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

require "org/allbinary/game/score/HighScoresHelperBaseInterface"

class HighScoresHelperBase
    include HighScoresHelperBaseInterface
    attr_accessor :logUtil, :highScoresArrayP

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray
    end

    def initialize
        initialize_fields
    end
    

    def setHighScoresArray(highScoresArrayP)
        if highScoresArrayP != nil
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(StringMaker.new().append(commonStrings.START).appendint(highScoresArrayP.length).to_s, self, "setHighScoresArray")
        else
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "setHighScoresArray")
        end
        @highScoresArrayP = highScoresArrayP
    end
    

    def getNextHighScores()
        return NullHighScoresSingletonFactory.getInstance()
    end
    

    def isAnyHighScores()
        raise RuntimeError.new()
    end
    

    def setSelectedHighScores(selectedHighScores)
    end
    

    def getSelectedHighScores()
        return NullHighScoresSingletonFactory.getInstance()
    end
    

    def getHighScoresArray()
        return @highScoresArrayP
    end
    

    def selectHighScores()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/LastFetchHighScoresFactory"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"

