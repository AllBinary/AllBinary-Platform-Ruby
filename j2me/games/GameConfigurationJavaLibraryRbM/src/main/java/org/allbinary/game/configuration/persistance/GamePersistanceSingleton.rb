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
# package org.allbinary.game.configuration.persistance

require "org/allbinary/game/configuration/persistance/KeyValuePersistance"

class GamePersistanceSingleton < KeyValuePersistance
    

    def self.getInstance()
        return GamePersistanceSingleton::GAME_PERSISTANCE
    end
    

    def initialize()
        super(GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:GAME_PERSISTANCE, GamePersistanceSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GamePersistanceSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GAME_PERSISTANCE].include?(name)
        end
        super
    end
end

autoload :GamePersistanceStrings, "org/allbinary/game/configuration/persistance/GamePersistanceStrings"

begin
    GamePersistanceSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

