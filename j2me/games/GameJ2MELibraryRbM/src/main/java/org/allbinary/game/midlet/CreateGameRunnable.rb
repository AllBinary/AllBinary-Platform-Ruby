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

class CreateGameRunnable
    include Runnable
    attr_accessor :logUtil, :commonStrings, :demoGameMidlet, :hashtable, :startGameMidletEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @demoGameMidlet = nil
        @hashtable = nil
        @startGameMidletEvent = nil
    end
    

    def initialize(demoGameMidlet, hashtable)
        initialize_fields
        @demoGameMidlet = demoGameMidlet
        @hashtable = hashtable
        @startGameMidletEvent = DemoGameMidletEvent.new(self, DemoGameMidletStateFactory.getInstance().START_GAME)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            progressCanvas = ProgressCanvasFactory.getInstance()
            @demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas)
            @demoGameMidlet.stopGameCanvasRunnableInterface()
            @demoGameMidlet.setGameCanvasRunnableInterface(@demoGameMidlet.createGameCanvasRunnableInterface())
            @demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(@hashtable)
            @demoGameMidlet.startGameCanvasRunnableInterface()
            DemoGameMidletEventHandler.getInstance().fireEvent(@startGameMidletEvent)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet"
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent"
autoload :DemoGameMidletEventHandler, "org/allbinary/game/midlet/DemoGameMidletEventHandler"
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory"

