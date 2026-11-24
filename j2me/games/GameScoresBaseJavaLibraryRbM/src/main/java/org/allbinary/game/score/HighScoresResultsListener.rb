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


module ::Org; module Allbinary; module Game; module Score

module HighScoresResultsListener
    

    def setHighScoresArray(highScoresArrayP)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)

end; end; end; end

