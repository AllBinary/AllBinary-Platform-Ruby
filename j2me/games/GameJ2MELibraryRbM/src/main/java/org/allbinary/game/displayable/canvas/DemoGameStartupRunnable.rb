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

require "org/allbinary/thread/ABRunnable"

class DemoGameStartupRunnable < ABRunnable
    attr_accessor :logUtil, :demoCanvas

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @demoCanvas = nil
    end
    

    def initialize(demoCanvas)
        super()
        initialize_fields
        @demoCanvas = demoCanvas
    end
    

    def run()
        begin
            self.setRunning(true)
            @demoCanvas.stopGameDemo()
            @demoCanvas.create()
            @demoCanvas.start()
            self.setRunning(false)
        rescue StandardError => e
            self.setRunning(false)
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    

    def getType()
        return DemoGameStartupRunnable::TYPE
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/displayable/canvas/DemoCanvas"

class DemoGameStartupRunnable
    TYPE = 4
end

