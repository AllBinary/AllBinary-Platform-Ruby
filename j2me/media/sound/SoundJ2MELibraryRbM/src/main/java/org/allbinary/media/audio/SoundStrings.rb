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


class SoundStrings
    attr_accessor :STOP_ALL, :CLOSE_ALL, :SOUND, :INIT_SOUND, :STOPPING_SOUND, :CLOSING_SOUND

    def initialize_fields
        @STOP_ALL = "stopAll"
        @CLOSE_ALL = "closeAll"
        @SOUND = " Sound: "
        @INIT_SOUND = "Initializing Sound: "
        @STOPPING_SOUND = "Stopping Sound: "
        @CLOSING_SOUND = "Closing Sound: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SoundStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class SoundStrings
    @@instance = SoundStrings.new()
end

