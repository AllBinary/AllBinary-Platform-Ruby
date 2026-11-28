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
# package org.allbinary.game.input.event

require "java/lang/Object"

module ::Org; module Allbinary; module Game; module Input; module Event

class GameKeyEventHandler
    attr_accessor :logUtil, :commonStrings, :pressGameKeyEventHandler, :upGameKeyEventHandler, :downGameKeyEventHandler

    def jfields_org_allbinary_game_input_event_GameKeyEventHandler
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_event_GameKeyEventHandler
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def removeAllListeners()
        java_monitor.synchronize do
        @pressGameKeyEventHandler.removeAllListeners()
        @upGameKeyEventHandler.removeAllListeners()
        @downGameKeyEventHandler.removeAllListeners()
        end
    end
    

    def addListenerForPlayer(eventListenerInterface, playerInputId)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.ADD_LISTENER)
        @pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
    end
    

    def addListener(eventListenerInterface)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.ADD_LISTENER)
        @pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.REMOVE_LISTENER)
        @pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
    end

    def self.instance()
        GameKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameKeyEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false)
autoload :PressGameKeyEventHandler, "org/allbinary/game/input/event/PressGameKeyEventHandler" unless const_defined?(:PressGameKeyEventHandler, false)
autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false)

begin
    GameKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

