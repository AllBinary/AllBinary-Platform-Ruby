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

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresFactoryInterface"

module ::Org; module Allbinary; module Game; module Score

class HighScoresBase
    include HighScoresFactoryInterface
    attr_accessor :commonStrings

    def jfields_org_allbinary_game_score_HighScoresBase
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_game_score_HighScoresBase
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        raise RuntimeError.new()
    end
    java_overload :fetchHighScores, 2
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        raise RuntimeError.new()
    end
    java_overload :fetchHighScoresPreload, 3
    

    def createHighScoresHelper()
        raise RuntimeError.new()
    end
    java_overload :createHighScoresHelper, 0
end

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false)
autoload :HighScoresResultsListener, "org/allbinary/game/score/HighScoresResultsListener" unless const_defined?(:HighScoresResultsListener, false)

end; end; end; end

