# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio

require "java/lang/JavaOverload"
require "android/media/MediaPlayer"

module ::Org; module Allbinary; module Media; module Audio

class AndroidMediaPlayerWrapperListener
    attr_accessor :logUtil, :commonStrings, :androidMediaPlayerWrapper, :mOnBufferingUpdateListener, :mOnPreparedListener, :mOnErrorListener, :mOnCompletionListener
    class MediaPlayerOnBufferingUpdateListener
        include ::Android::Media::MediaPlayer::OnBufferingUpdateListener
        

        def onBufferingUpdate(mediaPlayer, i)
        end
        java_overload :onBufferingUpdate, 2
    end
    class MediaPlayerOnPreparedListener
        include ::Android::Media::MediaPlayer::OnPreparedListener
        

        def onPrepared(mp)
        end
        java_overload :onPrepared, 1
    end
    class MediaPlayerOnErrorListener
        include ::Android::Media::MediaPlayer::OnErrorListener
        

        def onError(mp, what, extra)
            return false
        end
        java_overload :onError, 3
    end
    class MediaPlayerOnCompletionListener
        include ::Android::Media::MediaPlayer::OnCompletionListener
        

        def onCompletion(mp)
        end
        java_overload :onCompletion, 1
    end
    class AndroidMediaPlayerOnBufferingUpdateListener < MediaPlayerOnBufferingUpdateListener
        attr_accessor :ON_BUFFERING_UPDATE, :androidMediaPlayerWrapperListener

        def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnBufferingUpdateListener
            @ON_BUFFERING_UPDATE = "onBufferingUpdate()"
            @androidMediaPlayerWrapperListener = nil unless instance_variable_defined?(:@androidMediaPlayerWrapperListener)
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnBufferingUpdateListener
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onBufferingUpdate(mediaPlayer, i)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Update buffer: ").appendint(i).append("%").to_s, self, @ON_BUFFERING_UPDATE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(::Javax::Microedition::Media::PlayerListener::DEVICE_UNAVAILABLE)
        end
        java_overload :onBufferingUpdate, 2
    end
    class AndroidMediaPlayerOnPreparedListener < MediaPlayerOnPreparedListener
        attr_accessor :ON_PREPARE, :androidMediaPlayerWrapperListener

        def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnPreparedListener
            @ON_PREPARE = "onPrepare()"
            @androidMediaPlayerWrapperListener = nil unless instance_variable_defined?(:@androidMediaPlayerWrapperListener)
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnPreparedListener
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onPrepared(mp)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.putF(commonStrings.START, self, @ON_PREPARE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(::Javax::Microedition::Media::PlayerListener::DEVICE_AVAILABLE)
        end
        java_overload :onPrepared, 1
    end
    class AndroidMediaPlayerOnErrorListener < MediaPlayerOnErrorListener
        attr_accessor :ON_ERROR, :androidMediaPlayerWrapperListener

        def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnErrorListener
            @ON_ERROR = "onError()"
            @androidMediaPlayerWrapperListener = nil unless instance_variable_defined?(:@androidMediaPlayerWrapperListener)
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnErrorListener
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onError(mp, what, extra)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append("What: ").appendint(what).append(" Extra: ").appendint(extra).to_s, self, @ON_ERROR)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(::Javax::Microedition::Media::PlayerListener::ERROR)
            return true
        end
        java_overload :onError, 3
    end
    class AndroidMediaPlayerOnCompletionListener < MediaPlayerOnCompletionListener
        attr_accessor :ON_COMPLETE, :androidMediaPlayerWrapperListener

        def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnCompletionListener
            @ON_COMPLETE = "onComplete()"
            @androidMediaPlayerWrapperListener = nil unless instance_variable_defined?(:@androidMediaPlayerWrapperListener)
        end
        

        def initialize(androidMediaPlayerWrapperListener)
            super()
            jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener_AndroidMediaPlayerOnCompletionListener
            @androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener
        end
        

        def onCompletion(mp)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.putF(commonStrings.START, self, @ON_COMPLETE)
            @androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(::Javax::Microedition::Media::PlayerListener::END_OF_MEDIA)
        end
        java_overload :onCompletion, 1
    end

    def jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @androidMediaPlayerWrapper = AndroidMediaPlayerWrapper::NULL_ANDROID_MEDIA_PLAYER_WRAPPER
        @mOnBufferingUpdateListener = AndroidMediaPlayerOnBufferingUpdateListener.new(self)
        @mOnPreparedListener = AndroidMediaPlayerOnPreparedListener.new(self)
        @mOnErrorListener = AndroidMediaPlayerOnErrorListener.new(self)
        @mOnCompletionListener = AndroidMediaPlayerOnCompletionListener.new(self)
    end
    

    def initialize(androidMediaPlayerWrapper)
        jfields_org_allbinary_media_audio_AndroidMediaPlayerWrapperListener
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

module ::Javax; module Microedition; module Media; autoload :PlayerListener, "javax/microedition/media/PlayerListener" unless const_defined?(:PlayerListener, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AndroidMediaPlayerWrapper, "org/allbinary/media/audio/AndroidMediaPlayerWrapper" unless const_defined?(:AndroidMediaPlayerWrapper, false)

end; end; end; end

