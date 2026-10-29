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

require "org/allbinary/game/displayable/canvas/GameRunnable"

class GameFrameRunnable < GameRunnable
    attr_accessor :logUtil, :gameTickDisplayInfoSingleton, :allBinaryGameCanvas, :gameTickTimeDelayHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
        @allBinaryGameCanvas = nil
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        initialize_fields
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def run()
        begin
            allBinaryGameCanvas = @allBinaryGameCanvas
            allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(@gameTickTimeDelayHelper.setStartTime())
            @gameTickDisplayInfoSingleton.update()
            allBinaryGameCanvas.processGame()
            if !allBinaryGameCanvas.isRunning() || allBinaryGameCanvas.isPaused()
                allBinaryGameCanvas.notifyDonePainting()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

require "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

