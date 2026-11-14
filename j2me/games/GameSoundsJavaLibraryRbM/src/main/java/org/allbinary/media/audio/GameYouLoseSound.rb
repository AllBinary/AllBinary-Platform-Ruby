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
# package org.allbinary.media.audio

require "org/allbinary/media/audio/CompositeSound"

#Use 8hz16bitmono for most J2ME
class GameYouLoseSound < CompositeSound
    

    def initialize()
        super("resource:/wav/youlose.wav")
    end
    

    def self.getInstance()
        return GameYouLoseSound.soundInterface
    end

    def self.soundInterface()
        GameYouLoseSound.java_static_fields unless @java_static_fields_started
        return defined?(@@soundInterface) ? @@soundInterface : nil
    end

    def self.soundInterface=(value)
        GameYouLoseSound.java_static_fields unless @java_static_fields_started
        @@soundInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@soundInterface = GameYouLoseSound.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameYouLoseSound"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Sound, "org/allbinary/media/audio/Sound"

begin
    GameYouLoseSound.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

