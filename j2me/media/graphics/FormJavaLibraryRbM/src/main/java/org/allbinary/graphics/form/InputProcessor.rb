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
# package org.allbinary.graphics.form

require "org/allbinary/canvas/Processor"

class InputProcessor < Processor
    attr_accessor :playerGameInputCompositeInterface

    def initialize_fields
        @playerGameInputCompositeInterface = nil
    end
    

    def initialize(playerGameInputCompositeInterface)
        super()
        initialize_fields
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
    end
    

    # throws Exception
    def process()
        @playerGameInputCompositeInterface.getPlayerGameInput().update()
    end
end

require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

