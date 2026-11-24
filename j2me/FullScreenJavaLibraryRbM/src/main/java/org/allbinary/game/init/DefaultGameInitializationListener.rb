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
# package org.allbinary.game.init

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"

module ::Org; module Allbinary; module Game; module Init

class DefaultGameInitializationListener
    include ::Org::Allbinary::Game::Configuration::Event::GameInitializedListenerInterface
    attr_accessor :logUtil, :swtJOGLProcessor, :firstTime

    def jfields_org_allbinary_game_init_DefaultGameInitializationListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @swtJOGLProcessor = ::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance()
        @firstTime = true
    end
    

    def initialize()
        jfields_org_allbinary_game_init_DefaultGameInitializationListener
        gameInitializedEventHandler = ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.removeAllListeners()
        gameInitializedEventHandler.addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onGameInitialized(gameInitializedEvent)
        _ON_GAME_INITIALIZED = "onGameInitialized"
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            @logUtil.putF(commonStrings.START, self, _ON_GAME_INITIALIZED)
            while !@swtJOGLProcessor.isHolderCreated()
                @logUtil.putF(commonStrings.UPDATE, self, _ON_GAME_INITIALIZED)
                sleep((20) / 1000.0)
            end
            ::Org::Allbinary::Game::Resource::FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel())
            if @firstTime
                @firstTime = false
            else
                @swtJOGLProcessor.onSurfaceChanged()
            end
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, _ON_GAME_INITIALIZED, e)
        end
    end
    java_overload :onGameInitialized, 1
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent" unless const_defined?(:GameInitializedEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEventHandler, "org/allbinary/game/configuration/event/GameInitializedEventHandler" unless const_defined?(:GameInitializedEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :FeatureResourceInitializationUtil, "org/allbinary/game/resource/FeatureResourceInitializationUtil" unless const_defined?(:FeatureResourceInitializationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor" unless const_defined?(:SWTJOGLProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
require "java/lang/Thread"

end; end; end; end

