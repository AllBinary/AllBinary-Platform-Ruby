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
# package org.allbinary.game.input

require "java/lang/Object"
require "org/allbinary/game/input/PlayerGameInput"

class NoPlayerGameInput < PlayerGameInput
    

    def self.getInstance()
        return NoPlayerGameInput::SINGLETON
    end
    

    def initialize()
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/util/BasicArrayListD"

class NoPlayerGameInput
    SINGLETON = NoPlayerGameInput.new()
end

