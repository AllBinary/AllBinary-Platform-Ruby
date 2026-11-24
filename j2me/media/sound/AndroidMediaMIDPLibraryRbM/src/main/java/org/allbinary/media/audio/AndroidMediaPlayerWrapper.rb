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
require "org/allbinary/media/audio/BasicPlayer"

module ::Org; module Allbinary; module Media; module Audio

class AndroidMediaPlayerWrapper < BasicPlayer
    attr_accessor :logUtil, :mediaPlayer

    def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @mediaPlayer = ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER
    end
    

    def self.createPlayerWrapper()
        begin
            return AndroidMediaPlayerWrapper.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        rescue StandardError => e
            raise RuntimeError.new()
        end
    end
    

    def initialize(resource)
        super()
        jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapper
        begin
            if resource == ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            else
                resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
                mediaPlayer = ::Android::Media::MediaPlayer.create(resourceUtil.getContext(), resourceUtil.getResourceId(resource).to_i)
                if mediaPlayer == nil
                    raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Failed to create media player for: ").append(resource).append(" with id: ").append(resourceUtil.getResourceId(resource).to_s).to_s)
                end
                self.setMediaPlayer(mediaPlayer)
                @mediaPlayer.setLooping(false)
            end
        rescue StandardError => e
            @logUtil.put((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.CONSTRUCTOR, e)
            raise e
        end
    end
    

    def setLoopCount(count)
        AndroidMediaPlayerWrapper.superclass.java_super_method(:setLoopCount, 1).bind(self).call(count)
        if @mediaPlayer != ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER && @mediaPlayer != nil
            if count == 0
                @mediaPlayer.setLooping(false)
            else
            end
        end
    end
    java_overload :setLoopCount, 1
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        AndroidMediaPlayerWrapper.superclass.java_super_method(:addPlayerListener, 1).bind(self).call(playerListener)
        end
    end
    java_overload :addPlayerListener, 1
    

    def removePlayerListener(playerListener)
        AndroidMediaPlayerWrapper.superclass.java_super_method(:removePlayerListener, 1).bind(self).call(playerListener)
    end
    java_overload :removePlayerListener, 1
    

    def getState()
        if @mediaPlayer.isPlaying()
            return ::Javax::Microedition::Media::Player::STARTED
        else
            return ::Javax::Microedition::Media::Player::PREFETCHED
        end
    end
    java_overload :getState, 0
    

    def close()
        begin
            @mediaPlayer.release()
            @mediaPlayer = ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CLOSE, e)
        end
    end
    java_overload :close, 0
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        begin
            if @mediaPlayer.isPlaying()
                @mediaPlayer.pause()
                @mediaPlayer.seekTo(0)
            end
            @mediaPlayer.start()
            AndroidMediaPlayerWrapper.superclass.java_super_method(:start, 0).bind(self).call()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
        end
    end
    java_overload :start, 0
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        begin
            @mediaPlayer.stop()
            @mediaPlayer.prepare()
            AndroidMediaPlayerWrapper.superclass.java_super_method(:stop, 0).bind(self).call()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "stop", e)
        end
        end
    end
    java_overload :stop, 0
    

    def update(event)
        @logUtil.putF("LineEvent: " + event, self, @commonStrings.UPDATE)
        size = @listenersList.size()
        (0...size).each do |index|
            listener = @listenersList.objectArray[index]
            listener.playerUpdate(self, event, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        end
    end
    java_overload :update, 1
    

    def setVolume(leftVolume, rightVolume)
        @mediaPlayer.setVolume(((leftVolume).to_f) / 100.0, ((rightVolume).to_f) / 100.0)
    end
    java_overload :setVolume, 2
    

    def getDuration()
        return ((@mediaPlayer.getDuration()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getDuration, 0
    

    def setMediaPlayer(mediaPlayer)
        @mediaPlayer = mediaPlayer
    end
    java_overload :setMediaPlayer, 1
    

    def getMediaPlayer()
        return @mediaPlayer
    end
    java_overload :getMediaPlayer, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ANDROID_MEDIA_PLAYER_WRAPPER, AndroidMediaPlayerWrapper.createPlayerWrapper())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidMediaPlayerWrapper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ANDROID_MEDIA_PLAYER_WRAPPER].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :PlayerListener, "javax/microedition/media/PlayerListener" unless const_defined?(:PlayerListener, false); end; end; end
module ::Android; module Media; autoload :MediaPlayer, "android/media/MediaPlayer" unless const_defined?(:MediaPlayer, false); end; end
module ::Org; module Allbinary; module Android; autoload :NullAndroidCanvas, "org/allbinary/android/NullAndroidCanvas" unless const_defined?(:NullAndroidCanvas, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    AndroidMediaPlayerWrapper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

