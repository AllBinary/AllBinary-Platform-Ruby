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
# package org.allbinary.media.audio.music


class MusicStrings
    attr_accessor :SONG_EXTRA, :LEFT_VOLUME, :RIGHT_VOLUME

    def initialize_fields
        @SONG_EXTRA = "SONG"
        @LEFT_VOLUME = "LEFT_VOLUME"
        @RIGHT_VOLUME = "RIGHT_VOLUME"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MusicStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class MusicStrings
    @@instance = MusicStrings.new()
end

