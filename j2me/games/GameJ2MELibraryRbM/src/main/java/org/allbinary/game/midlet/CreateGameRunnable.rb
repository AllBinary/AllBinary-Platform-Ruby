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

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Game; module Midlet

class CreateGameRunnable
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :commonStrings, :demoGameMidlet, :hashtable, :startGameMidletEvent

    def jfields_org_allbinary_game_midlet_CreateGameRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @demoGameMidlet = nil unless instance_variable_defined?(:@demoGameMidlet)
        @hashtable = nil unless instance_variable_defined?(:@hashtable)
        @startGameMidletEvent = nil unless instance_variable_defined?(:@startGameMidletEvent)
    end
    

    def initialize(demoGameMidlet, hashtable)
        jfields_org_allbinary_game_midlet_CreateGameRunnable
        @demoGameMidlet = demoGameMidlet
        @hashtable = hashtable
        @startGameMidletEvent = DemoGameMidletEvent.new(self, DemoGameMidletStateFactory.getInstance().START_GAME)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            @demoGameMidlet.commandAction(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas)
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
    java_overload :run, 0
end

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet" unless const_defined?(:DemoGameMidlet, false)
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent" unless const_defined?(:DemoGameMidletEvent, false)
autoload :DemoGameMidletEventHandler, "org/allbinary/game/midlet/DemoGameMidletEventHandler" unless const_defined?(:DemoGameMidletEventHandler, false)
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory" unless const_defined?(:DemoGameMidletStateFactory, false)

end; end; end; end

