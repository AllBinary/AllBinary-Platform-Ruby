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

# require "java/io/IOException"
# require "javax/sound/sampled/AudioFormat"
# require "javax/sound/sampled/AudioInputStream"
# require "javax/sound/sampled/BooleanControl"
# require "javax/sound/sampled/Clip"
# require "javax/sound/sampled/Control"
# require "javax/sound/sampled/Control/Type"
# require "javax/sound/sampled/Line/Info"
# require "javax/sound/sampled/LineListener"
# require "javax/sound/sampled/LineUnavailableException"

class NullClip
    include Clip
    

    # throws LineUnavailableException
    def open(format, data, offset, bufferSize)
    end
    

    # throws LineUnavailableException, IOException
    # Java overloaded method: Ruby keeps the last definition
    def open(stream)
    end
    

    def getFrameLength()
        return 0
    end
    

    def getMicrosecondLength()
        return 0
    end
    

    def setFramePosition(frames)
    end
    

    def setMicrosecondPosition(microseconds)
    end
    

    def setLoopPoints(start, end_)
    end
    

    def loop(count)
    end
    

    def drain()
    end
    

    def flush()
    end
    

    def start()
    end
    

    def stop()
    end
    

    def isRunning()
        return false
    end
    

    def isActive()
        return false
    end
    

    def getFormat()
        return NullAudioFormat::NULL_AUDIO_FORMAT
    end
    

    def getBufferSize()
        return 0
    end
    

    def available()
        return 0
    end
    

    def getFramePosition()
        return 0
    end
    

    def getLongFramePosition()
        return 0
    end
    

    def getMicrosecondPosition()
        return 0
    end
    

    def getLevel()
        return 0.0
    end
    

    def getLineInfo()
        return Info.new(self.class, NullAudioFormat::NULL_AUDIO_FORMAT)
    end
    

    # throws LineUnavailableException
    # Java overloaded method: Ruby keeps the last definition
    def open()
    end
    

    def close()
    end
    

    def isOpen()
        return false
    end
    

    def getControls()
        return Array.new(0, nil)
    end
    

    def isControlSupported(control)
        return false
    end
    

    def getControl(control)
        return NullClip::NULL_CONTROL
    end
    

    def addLineListener(listener)
    end
    

    def removeLineListener(listener)
    end
end

require "org/allbinary/media/audio/NullAudioFormat"
require "org/allbinary/media/audio/NullJ2SEControl"

class NullClip
    NULL_CONTROL = NullJ2SEControl.new(BooleanControl::Type.MUTE)
end

