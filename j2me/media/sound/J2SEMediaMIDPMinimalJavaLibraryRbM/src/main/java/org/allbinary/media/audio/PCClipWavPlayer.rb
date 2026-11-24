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
require "java/lang/JavaOverload"
require "javax/sound/sampled/LineListener"
require "org/allbinary/media/audio/BasicPlayer"

module ::Org; module Allbinary; module Media; module Audio

class PCClipWavPlayer < BasicPlayer
    include ::Javax::Sound::Sampled::LineListener
    attr_accessor :logUtil, :audioInputStream, :clip

    def jfields_org_allbinary_media_audio_PCClipWavPlayer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @audioInputStream = nil unless instance_variable_defined?(:@audioInputStream)
        @clip = nil unless instance_variable_defined?(:@clip)
    end
    

    def initialize(inputStream)
        super()
        jfields_org_allbinary_media_audio_PCClipWavPlayer
        audioInputStream = ::Javax::Sound::Sampled::AudioInputStream.new(::Java::Io::ByteArrayInputStream.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY), NullAudioFormat::NULL_AUDIO_FORMAT, 0)
        clip = NullClip.new()
        begin
            audioInputStream = ::Javax::Sound::Sampled::AudioSystem.getAudioInputStream(inputStream)
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
        ::Org::Allbinary::ThreadPackage::MusicThreadPool.getInstance().runTask(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                begin
                    close2()
                rescue StandardError => e
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            java_overload :run, 0
        end.new())
    end
    java_overload :close, 0
    

    # throws Exception
    def close2()
        @clip.drain()
        @clip.flush()
        @clip.close()
    end
    java_overload :close2, 0
    

    def getContentType()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getContentType, 0
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        ::Org::Allbinary::ThreadPackage::MusicThreadPool.getInstance().runTask(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                begin
                    start2()
                rescue StandardError => e
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            java_overload :run, 0
        end.new())
        end
    end
    java_overload :start, 0
    

    # throws Exception
    def start2()
        @clip.setFramePosition(0)
        @clip.loop(self.getLoopCount())
        @clip.start()
        PCClipWavPlayer.superclass.java_super_method(:start, 0).bind(self).call()
    end
    java_overload :start2, 0
    

    # throws Exception
    def create(audioInputStream)
        clip = ::Javax::Sound::Sampled::AudioSystem.getClip()
        clip.addLineListener(self)
        clip.open(audioInputStream)
        return clip
    end
    java_overload :create, 1
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        ::Org::Allbinary::ThreadPackage::MusicThreadPool.getInstance().runTask(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                begin
                    stop2()
                rescue StandardError => e
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            java_overload :run, 0
        end.new())
        end
    end
    java_overload :stop, 0
    

    # throws Exception
    def stop2()
        @clip.stop()
        PCClipWavPlayer.superclass.java_super_method(:stop, 0).bind(self).call()
    end
    java_overload :stop2, 0
    

    def getControl(controlType)
        return NullControl.new()
    end
    java_overload :getControl, 1
    

    def getControls()
        return Array.new(0, nil)
    end
    java_overload :getControls, 0
    

    def setVolume(leftVolume, rightVolume)
        self.setVolumeF(((leftVolume).to_f) / 100.0)
    end
    java_overload :setVolume, 2
    

    def getVolume()
        masterGainFloatControl = @clip.getControl(::Javax::Sound::Sampled::FloatControl::Type.MASTER_GAIN)
        return (((10.0) ** (masterGainFloatControl.getValue() / 20.0))).to_f
    end
    java_overload :getVolume, 0
    

    def setVolumeF(volume)
        if volume < 0.0 || volume > 1.0
            raise ArgumentError.new("Volume: " + (volume).to_s)
        end
        masterGainFloatControl = @clip.getControl(::Javax::Sound::Sampled::FloatControl::Type.MASTER_GAIN)
        masterGainFloatControl.setValue(20.0 * (Math.log10(volume)).to_f)
    end
    java_overload :setVolumeF, 1
    

    def getDuration()
        return @clip.getMicrosecondLength() / 1000
    end
    java_overload :getDuration, 0
    

    def update(event)
        if event.getType().equals(::Javax::Sound::Sampled::LineEvent::Type.STOP)
            size = @listenersList.size()
            (0...size).each do |index|
                listener = @listenersList.get(size)
                listener.playerUpdate(self, ::Javax::Microedition::Media::PlayerListener::END_OF_MEDIA, nil)
            end
        end
    end
    java_overload :update, 1
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Media; autoload :Control, "javax/microedition/media/Control" unless const_defined?(:Control, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :PlayerListener, "javax/microedition/media/PlayerListener" unless const_defined?(:PlayerListener, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :AudioInputStream, "javax/sound/sampled/AudioInputStream" unless const_defined?(:AudioInputStream, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :AudioSystem, "javax/sound/sampled/AudioSystem" unless const_defined?(:AudioSystem, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :Clip, "javax/sound/sampled/Clip" unless const_defined?(:Clip, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :FloatControl, "javax/sound/sampled/FloatControl" unless const_defined?(:FloatControl, false); end; end; end
module ::Javax; module Sound; module Sampled; autoload :LineEvent, "javax/sound/sampled/LineEvent" unless const_defined?(:LineEvent, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :MusicThreadPool, "org/allbinary/thread/MusicThreadPool" unless const_defined?(:MusicThreadPool, false); end; end; end
autoload :NullAudioFormat, "org/allbinary/media/audio/NullAudioFormat" unless const_defined?(:NullAudioFormat, false)
autoload :NullClip, "org/allbinary/media/audio/NullClip" unless const_defined?(:NullClip, false)
autoload :NullControl, "org/allbinary/media/audio/NullControl" unless const_defined?(:NullControl, false)

end; end; end; end

