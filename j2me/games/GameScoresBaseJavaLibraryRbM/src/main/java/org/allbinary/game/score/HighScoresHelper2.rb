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
require "org/allbinary/game/score/HighScoresHelperBase"

module ::Org; module Allbinary; module Game; module Score

class HighScoresHelper2 < HighScoresHelperBase
    attr_accessor :circularIndexUtil, :selectedHighScores

    def jfields_org_allbinary_game_score_HighScoresHelper2
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstanceAt(0, 0)
        @selectedHighScores = NullHighScoresSingletonFactory.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_score_HighScoresHelper2
    end
    

    def setSelectedHighScores(selectedHighScores)
        @selectedHighScores = selectedHighScores
    end
    java_overload :setSelectedHighScores, 1
    

    def getSelectedHighScores()
        return @selectedHighScores
    end
    java_overload :getSelectedHighScores, 0
    

    def setHighScoresArray(highScoresArrayP)
        HighScoresHelper2.superclass.java_super_method(:setHighScoresArray, 1).bind(self).call(highScoresArrayP)
        @circularIndexUtil.setSize(@highScoresArrayP.length)
        self.selectHighScores()
    end
    java_overload :setHighScoresArray, 1
    

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
    java_overload :selectHighScores, 0
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)
autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false)

end; end; end; end

