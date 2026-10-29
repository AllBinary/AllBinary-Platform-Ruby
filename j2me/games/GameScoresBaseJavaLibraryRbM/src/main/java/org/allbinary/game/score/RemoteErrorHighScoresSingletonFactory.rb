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


class RemoteErrorHighScoresSingletonFactory
    

    def self.getInstance()
        return RemoteErrorHighScoresSingletonFactory::SINGLETON
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/score/HighScores"

class RemoteErrorHighScoresSingletonFactory
    SINGLETON = HighScores.new(CommonStrings.getInstance().LOADING, "Remote High Scores Did Not Load", CommonStrings.getInstance().PERIODS)
end

