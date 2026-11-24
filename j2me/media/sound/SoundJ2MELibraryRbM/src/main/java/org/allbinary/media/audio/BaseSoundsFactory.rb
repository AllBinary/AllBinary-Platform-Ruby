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

require "java/lang/JavaOverload"
require "org/allbinary/media/audio/SoundsFactoryInterface"

module ::Org; module Allbinary; module Media; module Audio

class BaseSoundsFactory
    include SoundsFactoryInterface
    attr_accessor :initialized

    def jfields_org_allbinary_media_audio_BaseSoundsFactory
        @initialized = false unless instance_variable_defined?(:@initialized)
    end

    def initialize
        jfields_org_allbinary_media_audio_BaseSoundsFactory
    end
    

    def init()
    end
    java_overload :init, 0
    

    # throws Exception
    def getSoundInterfaceArray()
        return Array.new(0, nil)
    end
    java_overload :getSoundInterfaceArray, 0
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    java_overload :setInitialized, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0
end

autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false)

end; end; end; end

