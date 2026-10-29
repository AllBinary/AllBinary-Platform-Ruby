# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio

require "org/allbinary/media/audio/CompositeSound"

class SelectBuildingSound < CompositeSound
    

    def initialize()
        super("resource:/wav/select_building.wav")
    end
    

    def self.getInstance()
        return SelectBuildingSound.soundInterface
    end

    def self.soundInterface()
        return defined?(@@soundInterface) ? @@soundInterface : nil
    end

    def self.soundInterface=(value)
        @@soundInterface = value
    end
end

require "org/allbinary/media/audio/Sound"

class SelectBuildingSound
    @@soundInterface = SelectBuildingSound.new()
end

