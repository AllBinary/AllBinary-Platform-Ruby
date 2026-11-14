#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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

class InitGameProcessor < Processor
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
        if ProgressCanvasFactory.getInstance().isInGame()
            @gameCanvas.setProcessGameProcessorInit()
        end
    end
end

autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

