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

require "java/lang/Object"
require "org/allbinary/game/midlet/GameMidlet"

class DemoGameMidlet < GameMidlet
    

    def initialize(clientInformationFactory)
        super(clientInformationFactory)
    end
    

    # throws Exception
    def isContinue()
        hashtable = self.getStartStateHashtable()
        if hashtable != nil && hashtable.size() > 0
            return true
        else
            return false
        end
    end
    

    def getHighestLevel()
        return 1
    end
    

    # throws Exception
    def createDemoGameCanvasRunnableInterface()
        @logUtil.putF(@commonStrings.NOT_IMPLEMENTED, self, @commonStrings.CREATE)
        return NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
    end
    

    # throws Exception
    def createGameCanvasRunnable(allBinaryGameLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def createGameCanvasRunnableInterface()
        return self.createGameCanvasRunnable(self.createGameLayerManager())
    end
    

    def demoSetup()
    end
    

    def postDemoSetup()
    end
    

    # throws Exception
    def setDemo()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, "setDemo")
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        PrimaryThreadPool.getInstance().runTask(DemoRunnable.new(self))
        end
    end
    

    # throws Exception
    def createGame()
        java_monitor.synchronize do
        _CREATE_GAME = "createGame"
        @logUtil.putF(@commonStrings.START, self, _CREATE_GAME)
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        hashtable = self.getStartStateHashtable()
        self.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE)
        PrimaryThreadPool.getInstance().runTask(CreateGameRunnable.new(self, hashtable))
        @logUtil.putF(@commonStrings.END_, self, _CREATE_GAME)
        end
    end
    

    def isReady()
        return true
    end
end

autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory"
autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool"
autoload :NullGameCanvasRunnable, "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :CreateGameRunnable, "org/allbinary/game/midlet/CreateGameRunnable"
autoload :DemoRunnable, "org/allbinary/game/midlet/DemoRunnable"

