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

class HighScoresHelper < HighScoresHelperBase
    attr_accessor :circularIndexUtil, :lastIndex

    def jfields_org_allbinary_game_score_HighScoresHelper
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstanceAt(0, 0)
        @lastIndex = -1
    end

    def initialize
        super()
        jfields_org_allbinary_game_score_HighScoresHelper
    end
    

    def setHighScoresArray(highScoresArrayP)
        HighScoresHelper.superclass.java_super_method(:setHighScoresArray, 1).bind(self).call(highScoresArrayP)
        @circularIndexUtil.setSize(@highScoresArrayP.length)
    end
    java_overload :setHighScoresArray, 1
    

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
    java_overload :getNextHighScores, 0
    

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
    java_overload :isAnyHighScores, 0
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)

end; end; end; end

