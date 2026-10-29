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

class DemoGameRunnable < GameRunnable
    attr_accessor :logUtil, :demoCanvas, :gameTickTimeDelayHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @demoCanvas = nil
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(demoCanvas)
        super()
        initialize_fields
        @demoCanvas = demoCanvas
    end
    

    def run()
        begin
            @demoCanvas.getLoopTimeHelperP().setStartTime(@gameTickTimeDelayHelper.setStartTime())
            @demoCanvas.processGame()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    

    # throws Exception
    def processLoopSleep()
        @demoCanvas.processLoopSleep()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/game/displayable/canvas/DemoCanvas"

