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

require "org/allbinary/game/score/Scoreable"

class ScoreableAddOnlyForHud < Scoreable
    attr_accessor :scoreHudWidget

    def initialize_fields
        @scoreHudWidget = nil
    end
    

    def initialize(scoreVectorGraphic)
        super(0)
        initialize_fields
        @scoreHudWidget = scoreVectorGraphic
        self.getScoreHudWidget().set(0)
    end
    

    def removePoints(points)
    end
    

    def addPoints(points)
        super(points)
        self.getScoreHudWidget().add(points)
    end
    

    def getScoreHudWidget()
        return @scoreHudWidget
    end
end

require "org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget"

