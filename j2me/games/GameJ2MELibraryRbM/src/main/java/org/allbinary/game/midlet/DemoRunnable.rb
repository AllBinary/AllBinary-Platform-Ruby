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

require "java/lang/Runnable"

class DemoRunnable
    include Runnable
    attr_accessor :logUtil, :commonStrings, :demoGameMidlet, :startDemoGameMidletEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @demoGameMidlet = nil
        @startDemoGameMidletEvent = nil
    end
    

    def initialize(demoGameMidlet)
        initialize_fields
        @demoGameMidlet = demoGameMidlet
        @startDemoGameMidletEvent = DemoGameMidletEvent.new(@demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO)
    end
    

    def run()
        begin
            @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").to_s, self, @commonStrings.RUN)
            @demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance())
            @demoGameMidlet.setGameCanvasRunnableInterface(@demoGameMidlet.createDemoGameCanvasRunnableInterface())
            @demoGameMidlet.demoSetup()
            DemoGameMidletEventHandler.getInstance().fireEvent(@startDemoGameMidletEvent)
            @demoGameMidlet.startGameCanvasRunnableInterface()
            @demoGameMidlet.postDemoSetup()
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet"
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent"
autoload :DemoGameMidletEventHandler, "org/allbinary/game/midlet/DemoGameMidletEventHandler"
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory"

