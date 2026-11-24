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

class DemoRunnable
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :commonStrings, :demoGameMidlet, :startDemoGameMidletEvent

    def jfields_org_allbinary_game_midlet_DemoRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @demoGameMidlet = nil unless instance_variable_defined?(:@demoGameMidlet)
        @startDemoGameMidletEvent = nil unless instance_variable_defined?(:@startDemoGameMidletEvent)
    end
    

    def initialize(demoGameMidlet)
        jfields_org_allbinary_game_midlet_DemoRunnable
        @demoGameMidlet = demoGameMidlet
        @startDemoGameMidletEvent = DemoGameMidletEvent.new(@demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO)
    end
    

    def run()
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").to_s, self, @commonStrings.RUN)
            @demoGameMidlet.commandAction(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().SET_DISPLAYABLE, ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance())
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
    java_overload :run, 0
end

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet" unless const_defined?(:DemoGameMidlet, false)
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent" unless const_defined?(:DemoGameMidletEvent, false)
autoload :DemoGameMidletEventHandler, "org/allbinary/game/midlet/DemoGameMidletEventHandler" unless const_defined?(:DemoGameMidletEventHandler, false)
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory" unless const_defined?(:DemoGameMidletStateFactory, false)

end; end; end; end

