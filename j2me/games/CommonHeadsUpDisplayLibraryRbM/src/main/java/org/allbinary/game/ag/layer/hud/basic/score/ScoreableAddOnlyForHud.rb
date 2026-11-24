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
# package org.allbinary.game.ag.layer.hud.basic.score

require "java/lang/JavaOverload"
require "org/allbinary/game/score/Scoreable"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Score

class ScoreableAddOnlyForHud < ::Org::Allbinary::Game::Score::Scoreable
    attr_accessor :scoreHudWidget

    def jfields_org_allbinary_game_ag_layer_hud_basic_score_ScoreableAddOnlyForHud
        @scoreHudWidget = nil unless instance_variable_defined?(:@scoreHudWidget)
    end
    

    def initialize(scoreVectorGraphic)
        super(0)
        jfields_org_allbinary_game_ag_layer_hud_basic_score_ScoreableAddOnlyForHud
        @scoreHudWidget = scoreVectorGraphic
        self.getScoreHudWidget().set(0)
    end
    

    def removePoints(points)
    end
    java_overload :removePoints, 1
    

    def addPoints(points)
        ScoreableAddOnlyForHud.superclass.java_super_method(:addPoints, 1).bind(self).call(points)
        self.getScoreHudWidget().add(points)
    end
    java_overload :addPoints, 1
    

    def getScoreHudWidget()
        return @scoreHudWidget
    end
    java_overload :getScoreHudWidget, 0
end

autoload :ScoreHudWidget, "org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget" unless const_defined?(:ScoreHudWidget, false)

end; end; end; end; end; end; end; end

