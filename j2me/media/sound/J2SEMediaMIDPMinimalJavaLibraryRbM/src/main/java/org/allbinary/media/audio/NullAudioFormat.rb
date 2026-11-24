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
# package org.allbinary.media.audio


module ::Org; module Allbinary; module Media; module Audio

class NullAudioFormat

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_AUDIO_FORMAT, ::Javax::Sound::Sampled::AudioFormat.new(::Javax::Sound::Sampled::AudioFormat::Encoding.PCM_UNSIGNED, 0.0, 0, 0, 0, 0.0, false))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullAudioFormat"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_AUDIO_FORMAT].include?(name)
        end
        super
    end
end

module ::Javax; module Sound; module Sampled; autoload :AudioFormat, "javax/sound/sampled/AudioFormat" unless const_defined?(:AudioFormat, false); end; end; end

begin
    NullAudioFormat.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

