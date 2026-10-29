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

class ErrorSound < CompositeSound
    

    def initialize()
        super("resource:/wav/error.wav")
    end
    

    def self.getInstance()
        return ErrorSound.soundInterface
    end

    def self.soundInterface()
        return defined?(@@soundInterface) ? @@soundInterface : nil
    end

    def self.soundInterface=(value)
        @@soundInterface = value
    end
end

require "org/allbinary/media/audio/Sound"

class ErrorSound
    @@soundInterface = ErrorSound.new()
end

