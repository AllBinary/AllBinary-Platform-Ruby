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
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/Player"
# require "javax/microedition/media/PlayerListener"
require "org/allbinary/media/audio/BasicPlayer"

class AndroidMediaPlayerWrapper < BasicPlayer
    attr_accessor :logUtil, :mediaPlayer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @mediaPlayer = NullAndroidCanvas::NULL_MEDIA_PLAYER
    end
    

    def self.createPlayerWrapper()
        begin
            return AndroidMediaPlayerWrapper.new(StringUtil.getInstance().EMPTY_STRING)
        rescue StandardError => e
            raise RuntimeError.new()
        end
    end
    

    def initialize(resource)
        super()
        initialize_fields
        begin
            if resource == StringUtil.getInstance().EMPTY_STRING
            else
                resourceUtil = ResourceUtil.getInstance()
                mediaPlayer = MediaPlayer.create(resourceUtil.getContext(), resourceUtil.getResourceId(resource).to_i)
                if mediaPlayer == nil
                    raise StandardError.new(StringMaker.new().append("Failed to create media player for: ").append(resource).append(" with id: ").append(resourceUtil.getResourceId(resource).to_s).to_s)
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
        super(count)
        if @mediaPlayer != NullAndroidCanvas::NULL_MEDIA_PLAYER && @mediaPlayer != nil
            if count == 0
                @mediaPlayer.setLooping(false)
            else
            end
        end
    end
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        super(playerListener)
        end
    end
    

    def removePlayerListener(playerListener)
        super(playerListener)
    end
    

    def getState()
        if @mediaPlayer.isPlaying()
            return Player::STARTED
        else
            return Player::PREFETCHED
        end
    end
    

    def close()
        begin
            @mediaPlayer.release()
            @mediaPlayer = NullAndroidCanvas::NULL_MEDIA_PLAYER
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CLOSE, e)
        end
    end
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        begin
            if @mediaPlayer.isPlaying()
                @mediaPlayer.pause()
                @mediaPlayer.seekTo(0)
            end
            @mediaPlayer.start()
            super()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
        end
    end
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        begin
            @mediaPlayer.stop()
            @mediaPlayer.prepare()
            super()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "stop", e)
        end
        end
    end
    

    def update(event)
        @logUtil.putF("LineEvent: " + event, self, @commonStrings.UPDATE)
        size = @listenersList.size()
        (0...size).each do |index|
            listener = @listenersList.objectArray[index]
            listener.playerUpdate(self, event, NullUtil.getInstance().NULL_OBJECT)
        end
    end
    

    def setVolume(leftVolume, rightVolume)
        @mediaPlayer.setVolume(((leftVolume).to_f) / 100.0, ((rightVolume).to_f) / 100.0)
    end
    

    def getDuration()
        return (@mediaPlayer.getDuration()).to_i
    end
    

    def setMediaPlayer(mediaPlayer)
        @mediaPlayer = mediaPlayer
    end
    

    def getMediaPlayer()
        return @mediaPlayer
    end
end

require "android/media/MediaPlayer"
require "org/allbinary/android/NullAndroidCanvas"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class AndroidMediaPlayerWrapper
    NULL_ANDROID_MEDIA_PLAYER_WRAPPER = AndroidMediaPlayerWrapper.createPlayerWrapper()
end

