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


class RemoteHighScoresSubmissionProcessorFactory
    

    def self.getInstance()
        return RemoteHighScoresSubmissionProcessorFactory::SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RemoteHighScoresSubmissionProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RemoteHighScoresSubmissionProcessorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :RemoteHighScoresSubmissionProcessor, "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessor"
autoload :RemoteHighScoresSubmissionProcessorInterface, "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorInterface"

begin
    RemoteHighScoresSubmissionProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

