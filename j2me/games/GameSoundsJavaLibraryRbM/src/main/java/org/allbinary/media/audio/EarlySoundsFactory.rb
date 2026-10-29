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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/media/audio/Sound"

class EarlySoundsFactory
    @@instance = EarlySoundsFactory.new()
end

