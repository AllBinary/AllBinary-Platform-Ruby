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

require "java/lang/Object"
# require "java/io/ByteArrayInputStream"
# require "java/io/InputStream"
# require "javax/microedition/media/Control"
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/PlayerListener"
# require "javax/sound/sampled/AudioInputStream"
# require "javax/sound/sampled/AudioSystem"
# require "javax/sound/sampled/Clip"
# require "javax/sound/sampled/FloatControl"
# require "javax/sound/sampled/LineEvent"
# require "javax/sound/sampled/LineListener"
require "org/allbinary/media/audio/BasicPlayer"

class PCClipWavPlayer < BasicPlayer
    include LineListener
    attr_accessor :logUtil, :audioInputStream, :clip

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @audioInputStream = nil
        @clip = nil
    end
    

    def initialize(inputStream)
        super()
        initialize_fields
        audioInputStream = AudioInputStream.new(ByteArrayInputStream.new(NullUtil.getInstance().NULL_BYTE_ARRAY), NullAudioFormat::NULL_AUDIO_FORMAT, 0)
        clip = NullClip.new()
        begin
            audioInputStream = AudioSystem.getAudioInputStream(inputStream)
            clip = self.create(audioInputStream)
            if clip == nil
                @logUtil.put("Clip was null", self, @commonStrings.CONSTRUCTOR, StandardError.new())
                raise RuntimeError.new()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
        @audioInputStream = audioInputStream
        @clip = clip
    end
    

    def close()
        MusicThreadPool.getInstance().runTask(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                begin
                    close2()
                rescue StandardError => e
                    PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
        end.new())
    end
    

    # throws Exception
    def close2()
        @clip.drain()
        @clip.flush()
        @clip.close()
    end
    

    def getContentType()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        MusicThreadPool.getInstance().runTask(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                begin
                    start2()
                rescue StandardError => e
                    PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
        end.new())
        end
    end
    

    # throws Exception
    def start2()
        @clip.setFramePosition(0)
        @clip.loop(self.getLoopCount())
        @clip.start()
        self.class.superclass.instance_method(:start).bind(self).call()
    end
    

    # throws Exception
    def create(audioInputStream)
        clip = AudioSystem.getClip()
        clip.addLineListener(self)
        clip.open(audioInputStream)
        return clip
    end
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        MusicThreadPool.getInstance().runTask(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                begin
                    stop2()
                rescue StandardError => e
                    PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
        end.new())
        end
    end
    

    # throws Exception
    def stop2()
        @clip.stop()
        self.class.superclass.instance_method(:stop).bind(self).call()
    end
    

    def getControl(controlType)
        return NullControl.new()
    end
    

    def getControls()
        return Array.new(0, nil)
    end
    

    def setVolume(leftVolume, rightVolume)
        self.setVolumeF(((leftVolume).to_f) / 100.0)
    end
    

    def getVolume()
        masterGainFloatControl = @clip.getControl(FloatControl::Type.MASTER_GAIN)
        return (((10.0) ** (masterGainFloatControl.getValue() / 20.0))).to_f
    end
    

    def setVolumeF(volume)
        if volume < 0.0 || volume > 1.0
            raise ArgumentError.new("Volume: " + (volume).to_s)
        end
        masterGainFloatControl = @clip.getControl(FloatControl::Type.MASTER_GAIN)
        masterGainFloatControl.setValue(20.0 * (Math.log10(volume)).to_f)
    end
    

    def getDuration()
        return @clip.getMicrosecondLength() / 1000
    end
    

    def update(event)
        if event.getType().equals(LineEvent::Type.STOP)
            size = @listenersList.size()
            (0...size).each do |index|
                listener = @listenersList.get(size)
                listener.playerUpdate(self, PlayerListener::END_OF_MEDIA, nil)
            end
        end
    end
end

require "org/allbinary/thread/ARunnable"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/thread/MusicThreadPool"
require "org/allbinary/media/audio/NullAudioFormat"
require "org/allbinary/media/audio/NullClip"
require "org/allbinary/media/audio/NullControl"

