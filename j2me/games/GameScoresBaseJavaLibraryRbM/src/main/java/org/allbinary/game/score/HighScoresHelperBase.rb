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

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"

module ::Org; module Allbinary; module Game; module Score

class HighScoresHelperBase
    include HighScoresHelperBaseInterface
    attr_accessor :logUtil, :highScoresArrayP

    def jfields_org_allbinary_game_score_HighScoresHelperBase
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray
    end

    def initialize
        jfields_org_allbinary_game_score_HighScoresHelperBase
    end
    

    def setHighScoresArray(highScoresArrayP)
        if highScoresArrayP != nil
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(commonStrings.START).appendint(highScoresArrayP.length).to_s, self, "setHighScoresArray")
        else
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "setHighScoresArray")
        end
        @highScoresArrayP = highScoresArrayP
    end
    java_overload :setHighScoresArray, 1
    

    def getNextHighScores()
        return NullHighScoresSingletonFactory.getInstance()
    end
    java_overload :getNextHighScores, 0
    

    def isAnyHighScores()
        raise RuntimeError.new()
    end
    java_overload :isAnyHighScores, 0
    

    def setSelectedHighScores(selectedHighScores)
    end
    java_overload :setSelectedHighScores, 1
    

    def getSelectedHighScores()
        return NullHighScoresSingletonFactory.getInstance()
    end
    java_overload :getSelectedHighScores, 0
    

    def getHighScoresArray()
        return @highScoresArrayP
    end
    java_overload :getHighScoresArray, 0
    

    def selectHighScores()
    end
    java_overload :selectHighScores, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)
autoload :LastFetchHighScoresFactory, "org/allbinary/game/score/LastFetchHighScoresFactory" unless const_defined?(:LastFetchHighScoresFactory, false)
autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false)

end; end; end; end

