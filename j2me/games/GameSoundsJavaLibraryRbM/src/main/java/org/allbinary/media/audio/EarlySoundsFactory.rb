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

require "org/allbinary/media/audio/BaseSoundsFactory"

class EarlySoundsFactory < BaseSoundsFactory
    

    # throws Exception
    def getSoundInterfaceArray()
        soundInterfaceArray = Array.new(2, nil)
        index = 0
        soundInterfaceArray[((index += 1) - 1)] = SelectSound.getInstance()
        soundInterfaceArray[((index += 1) - 1)] = ErrorSound.getInstance()
        return soundInterfaceArray
    end
    

    def self.getInstance()
        return EarlySoundsFactory.instance
    end

    def self.instance()
        EarlySoundsFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EarlySoundsFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EarlySoundsFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EarlySoundsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound"
autoload :SelectSound, "org/allbinary/media/audio/SelectSound"
autoload :Sound, "org/allbinary/media/audio/Sound"

begin
    EarlySoundsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

