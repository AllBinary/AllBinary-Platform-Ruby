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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/audio/AudioContentTypeData"

class AudioContentTypeDataFactory
    @@instance = AudioContentTypeDataFactory.new()
end

