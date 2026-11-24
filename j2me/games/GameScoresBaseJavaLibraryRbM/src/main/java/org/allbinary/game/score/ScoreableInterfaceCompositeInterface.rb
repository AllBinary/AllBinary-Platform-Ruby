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

module ScoreableInterfaceCompositeInterface
    

    def getScoreableInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Scoreable, "org/allbinary/game/score/Scoreable" unless const_defined?(:Scoreable, false)

end; end; end; end

