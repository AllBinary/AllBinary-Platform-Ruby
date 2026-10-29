# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio

# require "javax/microedition/media/PlayerListener"

class AndroidMediaPlayerWrapperListener
    attr_accessor :logUtil, :commonStrings, :androidMediaPlayerWrapper, :mOnBufferingUpdateListener, :mOnPreparedListener, :mOnErrorListener, :mOnCompletionListener
    class MediaPlayerOnBufferingUpdateListener
        include OnBufferingUpdateListener
        

        def onBufferingUpdate(mediaPlayer, i)
        end
    end
    class MediaPlayerOnPreparedListener
        include OnPreparedListener
        

        def onPrepared(mp)
        end
    end
    class MediaPlayerOnErrorListener
        include OnErrorListener
        

        def onError(mp, what, extra)
            return false
        end
    end
    class MediaPlayerOnCompletionListener
        include OnCompletionListener
        

        def onCompletion(mp)
        end
    end
    class AndroidMediaPlayerOnBufferingUpdateListener < MediaPlayerOnBufferingUpdateListener
        attr_accessor :ON_BUFFERING_UPDATE, :androidMediaPlayerWrapperListener

        def initialize_fields
            @ON_BUFFERING_UPDATE = "onBufferingUpdate()"
            @androidMediaPlayerWrapperListener = nil
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            initialize_fields
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onBufferingUpdate(mediaPlayer, i)
            logUtil = LogUtil.getInstance()
            logUtil.putF(StringMaker.new().append("Update buffer: ").appendint(i).append("%").to_s, self, @ON_BUFFERING_UPDATE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(PlayerListener::DEVICE_UNAVAILABLE)
        end
    end
    class AndroidMediaPlayerOnPreparedListener < MediaPlayerOnPreparedListener
        attr_accessor :ON_PREPARE, :androidMediaPlayerWrapperListener

        def initialize_fields
            @ON_PREPARE = "onPrepare()"
            @androidMediaPlayerWrapperListener = nil
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            initialize_fields
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onPrepared(mp)
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.putF(commonStrings.START, self, @ON_PREPARE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(PlayerListener::DEVICE_AVAILABLE)
        end
    end
    class AndroidMediaPlayerOnErrorListener < MediaPlayerOnErrorListener
        attr_accessor :ON_ERROR, :androidMediaPlayerWrapperListener

        def initialize_fields
            @ON_ERROR = "onError()"
            @androidMediaPlayerWrapperListener = nil
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            initialize_fields
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onError(mp, what, extra)
            logUtil = LogUtil.getInstance()
            logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append("What: ").appendint(what).append(" Extra: ").appendint(extra).to_s, self, @ON_ERROR)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(PlayerListener::ERROR)
            return true
        end
    end
    class AndroidMediaPlayerOnCompletionListener < MediaPlayerOnCompletionListener
        attr_accessor :ON_COMPLETE, :androidMediaPlayerWrapperListener

        def initialize_fields
            @ON_COMPLETE = "onComplete()"
            @androidMediaPlayerWrapperListener = nil
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            initialize_fields
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onCompletion(mp)
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.putF(commonStrings.START, self, @ON_COMPLETE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(PlayerListener::END_OF_MEDIA)
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @androidMediaPlayerWrapper = AndroidMediaPlayerWrapper::NULL_ANDROID_MEDIA_PLAYER_WRAPPER
        @mOnBufferingUpdateListener = AndroidMediaPlayerOnBufferingUpdateListener.new(self)
        @mOnPreparedListener = AndroidMediaPlayerOnPreparedListener.new(self)
        @mOnErrorListener = AndroidMediaPlayerOnErrorListener.new(self)
        @mOnCompletionListener = AndroidMediaPlayerOnCompletionListener.new(self)
    end
    

    def initialize(androidMediaPlayerWrapper)
        initialize_fields
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            @androidMediaPlayerWrapper = androidMediaPlayerWrapper
            mediaPlayer = androidMediaPlayerWrapper.getMediaPlayer()
            mediaPlayer.setOnCompletionListener(@mOnCompletionListener)
            mediaPlayer.setOnBufferingUpdateListener(@mOnBufferingUpdateListener)
            mediaPlayer.setOnPreparedListener(@mOnPreparedListener)
            mediaPlayer.setOnErrorListener(@mOnErrorListener)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
end

require "android/media/MediaPlayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/AndroidMediaPlayerWrapper"

