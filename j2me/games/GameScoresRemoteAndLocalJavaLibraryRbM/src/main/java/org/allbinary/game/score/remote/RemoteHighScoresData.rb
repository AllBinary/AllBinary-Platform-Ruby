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
# package org.allbinary.game.score.remote


class RemoteHighScoresData
    attr_accessor :HIGH_SCORES, :CUSTOMER_USER_NAME, :DISPLAY_NAME, :SCORE, :GAME_INFO, :GAME_CONFIGURATION

    def initialize_fields
        @HIGH_SCORES = "HIGH_SCORES"
        @CUSTOMER_USER_NAME = "CUSTOMER_USER_NAME"
        @DISPLAY_NAME = "DISPLAY_NAME"
        @SCORE = "SCORE"
        @GAME_INFO = "GAME_INFO"
        @GAME_CONFIGURATION = "GAME_CONFIGURATION"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RemoteHighScoresData::SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RemoteHighScoresData.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RemoteHighScoresData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

begin
    RemoteHighScoresData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

