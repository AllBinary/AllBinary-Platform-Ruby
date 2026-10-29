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
# package org.allbinary.game.displayable.canvas

require "org/allbinary/canvas/Processor"

class EndLevelIntermissionProcessor < Processor
    attr_accessor :gameCanvas

    def initialize_fields
        @gameCanvas = nil
    end
    

    def initialize(gameCanvas)
        super()
        initialize_fields
        @gameCanvas = gameCanvas
    end
    

    # throws Exception
    def process()
        @gameCanvas.processEndLevelIntermissionGameState()
    end
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

