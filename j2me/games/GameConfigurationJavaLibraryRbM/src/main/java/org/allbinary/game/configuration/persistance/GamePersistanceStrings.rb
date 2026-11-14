# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class GamePersistanceStrings
    attr_accessor :SAVED_GAME_RECORD_ID, :SAVED_GAME_CONFIGURATION_RECORD_ID, :DEFAULT_INPUT_MAPPING_RECORD_ID, :SAVED_INPUT_CONFIGURATION_RECORD_ID

    def initialize_fields
        @SAVED_GAME_RECORD_ID = "_SG"
        @SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
        @DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
        @SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GamePersistanceStrings.instance
    end

    def self.instance()
        GamePersistanceStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GamePersistanceStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GamePersistanceStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GamePersistanceStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    GamePersistanceStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

