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
# package org.allbinary.game.score

require "org/allbinary/game/score/HighScoresBase"

class NoHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :NO_HIGH_SCORES

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NO_HIGH_SCORES = Array.new(0, nil)
    end
    

    def self.getInstance()
        return NoHighScoresFactory.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting No HighScores", self, "fetchHighScores")
        highScoresResultsListener.setHighScoresArray(@NO_HIGH_SCORES)
    end
    

    def createHighScoresHelper()
        return HighScoresHelperBase.new()
    end

    def self.instance()
        NoHighScoresFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoHighScoresFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoHighScoresFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoHighScoresFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :HighScores, "org/allbinary/game/score/HighScores"
autoload :HighScoresHelperBase, "org/allbinary/game/score/HighScoresHelperBase"
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface"
autoload :HighScoresResultsListener, "org/allbinary/game/score/HighScoresResultsListener"

begin
    NoHighScoresFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

