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
# package org.allbinary.game.midlet


class DemoGameMidletStateFactory
    attr_accessor :NONE, :START_DEMO, :START_GAME, :START_INPUT_MAPPING

    def initialize_fields
        @NONE = DemoGameMidletState.new()
        @START_DEMO = DemoGameMidletState.new()
        @START_GAME = DemoGameMidletState.new()
        @START_INPUT_MAPPING = DemoGameMidletState.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return DemoGameMidletStateFactory::STATE
    end
end

require "org/allbinary/game/midlet/DemoGameMidletState"

class DemoGameMidletStateFactory
    STATE = DemoGameMidletStateFactory.new()
end

