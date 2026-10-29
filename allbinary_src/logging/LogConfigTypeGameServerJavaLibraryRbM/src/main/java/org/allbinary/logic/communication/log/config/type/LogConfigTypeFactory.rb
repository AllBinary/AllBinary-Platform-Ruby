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
# package org.allbinary.logic.communication.log.config.type


class LogConfigTypeFactory
    attr_accessor :NO_DESCRIPTION, :INIT_SERVER, :LOBBY_SERVER, :GAME_SERVER, :GAME_SIMULATOR, :CUSTOM_TYPES

    def initialize_fields
        @NO_DESCRIPTION = "No Description"
        @INIT_SERVER = LogConfigType.new("Init Server", @NO_DESCRIPTION)
        @LOBBY_SERVER = LogConfigType.new("Lobby Server", @NO_DESCRIPTION)
        @GAME_SERVER = LogConfigType.new("Game Server", @NO_DESCRIPTION)
        @GAME_SIMULATOR = LogConfigType.new("Game Simulator", @NO_DESCRIPTION)
        @CUSTOM_TYPES = LogConfigType.new("Custom Types", @NO_DESCRIPTION)
    end
    

    def self.getInstance()
        return LogConfigTypeFactory.instance
    end
    

    def initialize()
        initialize_fields
        LogConfigTypes::LOGGING.add(@INIT_SERVER)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigType"

class LogConfigTypeFactory
    @@instance = LogConfigTypeFactory.new()
end

