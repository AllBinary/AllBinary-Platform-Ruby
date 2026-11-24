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
require "org/allbinary/game/score/HighScoresResultsListener"

module ::Org; module Allbinary; module Game; module Score

module HighScoresHelperBaseInterface
    include HighScoresResultsListener
    

    def setSelectedHighScores(selectedHighScores)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setSelectedHighScores, 1
    

    def getHighScoresArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHighScoresArray, 0
    

    def getSelectedHighScores()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getSelectedHighScores, 0
end

autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)

end; end; end; end

