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
require "java/lang/JavaOverload"
require "org/allbinary/game/midlet/GameMidlet"

module ::Org; module Allbinary; module Game; module Midlet

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
    java_overload :isContinue, 0
    

    def getHighestLevel()
        return 1
    end
    java_overload :getHighestLevel, 0
    

    # throws Exception
    def createDemoGameCanvasRunnableInterface()
        @logUtil.putF(@commonStrings.NOT_IMPLEMENTED, self, @commonStrings.CREATE)
        return ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
    end
    java_overload :createDemoGameCanvasRunnableInterface, 0
    

    # throws Exception
    def createGameCanvasRunnable(allBinaryGameLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :createGameCanvasRunnable, 1
    

    # throws Exception
    def createGameCanvasRunnableInterface()
        return self.createGameCanvasRunnable(self.createGameLayerManager())
    end
    java_overload :createGameCanvasRunnableInterface, 0
    

    def demoSetup()
    end
    java_overload :demoSetup, 0
    

    def postDemoSetup()
    end
    java_overload :postDemoSetup, 0
    

    # throws Exception
    def setDemo()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, "setDemo")
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        ::Org::Allbinary::ThreadPackage::PrimaryThreadPool.getInstance().runTask(DemoRunnable.new(self))
        end
    end
    java_overload :setDemo, 0
    

    # throws Exception
    def createGame()
        java_monitor.synchronize do
        _CREATE_GAME = "createGame"
        @logUtil.putF(@commonStrings.START, self, _CREATE_GAME)
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        hashtable = self.getStartStateHashtable()
        self.setStartStateHashtable(::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE)
        ::Org::Allbinary::ThreadPackage::PrimaryThreadPool.getInstance().runTask(CreateGameRunnable.new(self, hashtable))
        @logUtil.putF(@commonStrings.END_, self, _CREATE_GAME)
        end
    end
    java_overload :createGame, 0
    

    def isReady()
        return true
    end
    java_overload :isReady, 0
end

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" unless const_defined?(:GameCanvasRunnableInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory" unless const_defined?(:ClientInformationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool" unless const_defined?(:PrimaryThreadPool, false); end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullGameCanvasRunnable, "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable" unless const_defined?(:NullGameCanvasRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :CreateGameRunnable, "org/allbinary/game/midlet/CreateGameRunnable" unless const_defined?(:CreateGameRunnable, false)
autoload :DemoRunnable, "org/allbinary/game/midlet/DemoRunnable" unless const_defined?(:DemoRunnable, false)

end; end; end; end

