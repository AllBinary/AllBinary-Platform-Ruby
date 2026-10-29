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
# package org.allbinary.game.tick

require "org/allbinary/game/tick/TickableInterface"

class NullTickable
    include TickableInterface
    attr_accessor :NAME

    def initialize_fields
        @NAME = "NulLTickable"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return NullTickable::SINGLETON
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    

    def getName()
        return @NAME
    end
end

require "org/allbinary/layer/AllBinaryLayerManager"

class NullTickable
    SINGLETON = NullTickable.new()
end

