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
# package org.allbinary.audio


class AudioContentTypeDataFactory
    attr_accessor :MIME_AUDIO_TONE, :MIME_AUDIO_AMR, :MIME_AUDIO_AMR_WB, :MIME_AUDIO_WAV, :MIME_AUDIO_MIDI, :MIME_AUDIO_SP_MIDI

    def initialize_fields
        @MIME_AUDIO_TONE = AudioContentTypeData.new("audio/x-tone-seq")
        @MIME_AUDIO_AMR = AudioContentTypeData.new("audio/amr")
        @MIME_AUDIO_AMR_WB = AudioContentTypeData.new("audio/amr-wb")
        @MIME_AUDIO_WAV = AudioContentTypeData.new("audio/x-wav")
        @MIME_AUDIO_MIDI = AudioContentTypeData.new("audio/midi")
        @MIME_AUDIO_SP_MIDI = AudioContentTypeData.new("audio/sp-midi")
    end
    

    def self.getInstance()
        return AudioContentTypeDataFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        AudioContentTypeDataFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AudioContentTypeDataFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AudioContentTypeDataFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AudioContentTypeDataFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AudioContentTypeData, "org/allbinary/audio/AudioContentTypeData"

begin
    AudioContentTypeDataFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

