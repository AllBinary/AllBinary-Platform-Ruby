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
# package org.allbinary.game.layer.special

require "org/allbinary/game/input/GameInputProcessor"

class SpecialGameInputInterfaceProcessor < GameInputProcessor
    attr_accessor :specialGameInputInterface

    def initialize_fields
        @specialGameInputInterface = nil
    end
    

    def initialize(collidableDestroyableDamageableLayer)
        super()
        initialize_fields
        @specialGameInputInterface = collidableDestroyableDamageableLayer
    end
end

require "org/allbinary/game/layer/special/SpecialGameInputInterface"

