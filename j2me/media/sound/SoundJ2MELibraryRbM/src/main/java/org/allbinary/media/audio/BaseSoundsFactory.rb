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

require "org/allbinary/media/audio/SoundsFactoryInterface"

class BaseSoundsFactory
    include SoundsFactoryInterface
    attr_accessor :initialized

    def initialize_fields
        @initialized = false
    end

    def initialize
        initialize_fields
    end
    

    def init()
    end
    

    # throws Exception
    def getSoundInterfaceArray()
        return Array.new(0, nil)
    end
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    

    def isInitialized()
        return @initialized
    end
end

require "org/allbinary/media/audio/Sound"

