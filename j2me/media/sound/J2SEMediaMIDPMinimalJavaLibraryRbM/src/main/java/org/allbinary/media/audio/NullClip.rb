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

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "javax/sound/sampled/Clip"
# require "javax/sound/sampled/Control/Type"
# require "javax/sound/sampled/DataLine/Info"

module ::Org; module Allbinary; module Media; module Audio

class NullClip
    include ::Javax::Sound::Sampled::Clip
    

    # throws LineUnavailableException
    def open_j4(format, data, offset, bufferSize)
    end
    

    # throws LineUnavailableException, IOException
    def open_j1(stream)
    end
    

    def getFrameLength()
        return 0
    end
    java_overload :getFrameLength, 0
    

    def getMicrosecondLength()
        return 0
    end
    java_overload :getMicrosecondLength, 0
    

    def setFramePosition(frames)
    end
    java_overload :setFramePosition, 1
    

    def setMicrosecondPosition(microseconds)
    end
    java_overload :setMicrosecondPosition, 1
    

    def setLoopPoints(start, end_)
    end
    java_overload :setLoopPoints, 2
    

    def loop(count)
    end
    java_overload :loop, 1
    

    def drain()
    end
    java_overload :drain, 0
    

    def flush()
    end
    java_overload :flush, 0
    

    def start()
    end
    java_overload :start, 0
    

    def stop()
    end
    java_overload :stop, 0
    

    def isRunning()
        return false
    end
    java_overload :isRunning, 0
    

    def isActive()
        return false
    end
    java_overload :isActive, 0
    

    def getFormat()
        return NullAudioFormat::NULL_AUDIO_FORMAT
    end
    java_overload :getFormat, 0
    

    def getBufferSize()
        return 0
    end
    java_overload :getBufferSize, 0
    

    def available()
        return 0
    end
    java_overload :available, 0
    

    def getFramePosition()
        return 0
    end
    java_overload :getFramePosition, 0
    

    def getLongFramePosition()
        return 0
    end
    java_overload :getLongFramePosition, 0
    

    def getMicrosecondPosition()
        return 0
    end
    java_overload :getMicrosecondPosition, 0
    

    def getLevel()
        return 0.0
    end
    java_overload :getLevel, 0
    

    def getLineInfo()
        return Info.new(self.class, NullAudioFormat::NULL_AUDIO_FORMAT)
    end
    java_overload :getLineInfo, 0
    

    # throws LineUnavailableException
    def open_j0()
    end

    def open(*java_overload_args)
        return open_j4(*java_overload_args) if java_overload_args.length == 4
        return open_j1(*java_overload_args) if java_overload_args.length == 1
        return open_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method open takes #{java_overload_args.length} arguments"
    end
    

    def close()
    end
    java_overload :close, 0
    

    def isOpen()
        return false
    end
    java_overload :isOpen, 0
    

    def getControls()
        return Array.new(0, nil)
    end
    java_overload :getControls, 0
    

    def isControlSupported(control)
        return false
    end
    java_overload :isControlSupported, 1
    

    def getControl(control)
        return NullClip::NULL_CONTROL
    end
    java_overload :getControl, 1
    

    def addLineListener(listener)
    end
    java_overload :addLineListener, 1
    

    def removeLineListener(listener)
    end
    java_overload :removeLineListener, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CONTROL, NullJ2SEControl.new(::Javax::Sound::Sampled::BooleanControl::Type.MUTE))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullClip"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CONTROL].include?(name)
        end
        super
    end
end

module ::Javax; module Sound; module Sampled; autoload :AudioFormat, "javax/sound/sampled/AudioFormat" unless const_defined?(:AudioFormat, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :AudioInputStream, "javax/sound/sampled/AudioInputStream" unless const_defined?(:AudioInputStream, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :BooleanControl, "javax/sound/sampled/BooleanControl" unless const_defined?(:BooleanControl, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :Control, "javax/sound/sampled/Control" unless const_defined?(:Control, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :LineListener, "javax/sound/sampled/LineListener" unless const_defined?(:LineListener, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :LineUnavailableException, "javax/sound/sampled/LineUnavailableException" unless const_defined?(:LineUnavailableException, false); end; end; end
autoload :NullAudioFormat, "org/allbinary/media/audio/NullAudioFormat" unless const_defined?(:NullAudioFormat, false)
autoload :NullJ2SEControl, "org/allbinary/media/audio/NullJ2SEControl" unless const_defined?(:NullJ2SEControl, false)

begin
    NullClip.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

