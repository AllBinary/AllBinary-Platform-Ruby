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

# require "javax/microedition/media/Control"
require "org/allbinary/media/audio/BasicPlayer"

class NoPlayer < BasicPlayer
    

    def initialize()
        super()
    end
    

    def close()
    end
    

    def getContentType()
        return StringUtil.getInstance().NULL_STRING
    end
    

    def getControl(controlType)
        return NullControl.new()
    end
    

    def getControls()
        return Array.new(0, nil)
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/audio/NullControl"

class NoPlayer
    NO_PLAYER = NoPlayer.new()
end

