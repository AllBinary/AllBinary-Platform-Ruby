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


module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type

class LogConfigTypeFactory
    attr_accessor :NO_DESCRIPTION, :INIT_SERVER, :LOBBY_SERVER, :GAME_SERVER, :GAME_SIMULATOR, :CUSTOM_TYPES

    def jfields_org_allbinary_logic_communication_log_config_type_LogConfigTypeFactory
        @NO_DESCRIPTION = "No Description"
        @INIT_SERVER = LogConfigType.new("Init Server", @NO_DESCRIPTION)
        @LOBBY_SERVER = LogConfigType.new("Lobby Server", @NO_DESCRIPTION)
        @GAME_SERVER = LogConfigType.new("Game Server", @NO_DESCRIPTION)
        @GAME_SIMULATOR = LogConfigType.new("Game Simulator", @NO_DESCRIPTION)
        @CUSTOM_TYPES = LogConfigType.new("Custom Types", @NO_DESCRIPTION)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_config_type_LogConfigTypeFactory
        ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.add(@INIT_SERVER)
    end

    def self.instance()
        LogConfigTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogConfigTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogConfigTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogConfigTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
autoload :LogConfigType, "org/allbinary/logic/communication/log/config/type/LogConfigType" unless const_defined?(:LogConfigType, false)

begin
    LogConfigTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

