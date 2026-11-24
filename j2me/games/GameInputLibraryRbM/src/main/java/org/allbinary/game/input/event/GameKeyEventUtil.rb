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
# package org.allbinary.game.input.event


module ::Org; module Allbinary; module Game; module Input; module Event

class GameKeyEventUtil
    

    def initialize()
    end
    

    def self.getKey(anyType)
        gameKeyEvent = anyType
        return gameKeyEvent.getKey()
    end
end

autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false)

end; end; end; end; end

