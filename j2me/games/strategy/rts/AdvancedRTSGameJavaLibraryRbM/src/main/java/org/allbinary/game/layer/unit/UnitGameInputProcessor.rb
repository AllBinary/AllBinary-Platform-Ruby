# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.unit

require "org/allbinary/game/input/GameInputProcessor"

class UnitGameInputProcessor < GameInputProcessor
    attr_accessor :unitLayer

    def initialize_fields
        @unitLayer = nil
    end
    

    def initialize(unitLayer)
        super()
        initialize_fields
        @unitLayer = unitLayer
    end
end

require "org/allbinary/game/layer/unit/UnitLayer"

