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


module ::Org; module Allbinary; module Game; module Score

module HighScoresInterface
    

    def getList()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addHighScore(newHighScore)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isBestScore(newHighScore)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false)

end; end; end; end

