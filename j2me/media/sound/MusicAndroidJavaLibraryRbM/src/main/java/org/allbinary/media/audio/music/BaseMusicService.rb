# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music

require "java/lang/JavaOverload"
require "android/app/Service"
require "org/allbinary/thread/ARunnable"

module ::Org; module Allbinary; module Media; module Audio; module Music

class BaseMusicService < ::Android::App::Service
    attr_accessor :logUtil, :commonStrings, :commonStateStrings, :ALREADY_PLAYING, :WAITING_FOR_MUSIC_TO_END, :player, :songId, :leftVolume, :rightVolume
    #A member class instead of a local class using the method's player and intent since most of the converted languages do not have local classes.
    class MusicRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
        attr_accessor :baseMusicService, :player, :intent

        def jfields_org_allbinary_media_audio_music_BaseMusicService_MusicRunnable
            @baseMusicService = nil unless instance_variable_defined?(:@baseMusicService)
            @player = nil unless instance_variable_defined?(:@player)
            @intent = nil unless instance_variable_defined?(:@intent)
        end
        

        def initialize(baseMusicService, player, intent)
            super()
            jfields_org_allbinary_media_audio_music_BaseMusicService_MusicRunnable
            @baseMusicService = baseMusicService
            @player = player
            @intent = intent
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            commonStateStrings = ::Org::Allbinary::StringPackage::CommonStateStrings.getInstance()
            begin
                while @player.isPlaying()
                    logUtil.putF(@baseMusicService.WAITING_FOR_MUSIC_TO_END, self, commonStateStrings.ON_START_COMMAND)
                    sleep((1200) / 1000.0)
                end
                @baseMusicService.onStartCommandIntent(@intent)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStateStrings.ON_START_COMMAND, e)
            end
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_media_audio_music_BaseMusicService
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonStateStrings = ::Org::Allbinary::StringPackage::CommonStateStrings.getInstance()
        @ALREADY_PLAYING = "This is one song per music service"
        @WAITING_FOR_MUSIC_TO_END = "Waiting for music to end"
        @player = ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER
        @songId = -1
        @leftVolume = -1
        @rightVolume = -1
    end

    def initialize
        super()
        jfields_org_allbinary_media_audio_music_BaseMusicService
    end
    

    def onBind(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.BIND)
        return nil
    end
    java_overload :onBind, 1
    

    def onCreate()
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.CREATE)
    end
    java_overload :onCreate, 0
    

    def onDestroy()
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.DESTROY)
        if @player != ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.PAUSE)
            @player.stop()
            @player.reset()
            @player.release()
        end
    end
    java_overload :onDestroy, 0
    

    def pause()
        if @player != ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.PAUSE)
            @player.pause()
        end
    end
    java_overload :pause, 0
    

    def resume()
        if @player != ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER && !@player.isPlaying()
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.RESUME)
            @player.start()
        end
    end
    java_overload :resume, 0
    

    def start()
        @player = ::Android::Media::MediaPlayer.create(self, @songId)
        @player.setVolume(((@leftVolume).to_f) / 100.0, ((@rightVolume).to_f) / 100.0)
        @player.setLooping(false)
        @player.start()
    end
    java_overload :start, 0
    

    def onStart(intent, startid)
        self.onStartCommandIntent(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.START)
    end
    java_overload :onStart, 2
    

    def onStartCommand(intent, flags, startId)
        self.onStartCommandIntent(intent)
        return ::Android::App::Service::START_STICKY
    end
    java_overload :onStartCommand, 3
    

    def onStartCommandIntent(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.ON_START_COMMAND)
        musicStrings = MusicStrings.getInstance()
        if intent != nil
            command = intent.getIntExtra(@commonStateStrings.ON_START_COMMAND, -1)
            @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COMMAND_LABEL + command, self, @commonStateStrings.ON_START_COMMAND)
            if command == 1
                self.pause()
                return
            elsif command == 2
                self.resume()
                return
            else
                @songId = intent.getIntExtra(musicStrings.SONG_EXTRA, -1)
                @leftVolume = intent.getIntExtra(musicStrings.LEFT_VOLUME, -1)
                @rightVolume = intent.getIntExtra(musicStrings.RIGHT_VOLUME, -1)
            end
        else
            raise RuntimeError.new("Started service without intent")
        end
        if @songId != -1
            GC.start
            if @player != ::Org::Allbinary::Android::NullAndroidCanvas::NULL_MEDIA_PLAYER && @player.isPlaying()
                player = @player
                @logUtil.putF(@ALREADY_PLAYING, self, @commonStateStrings.ON_START_COMMAND)
                runnable = MusicRunnable.new(self, player, intent)
                thread = ::Java::Lang::JavaThread.new(runnable)
                thread.start()
                return
            end
            self.start()
        end
    end
    java_overload :onStartCommandIntent, 1
end

module ::Android; module Content; autoload :Intent, "android/content/Intent" unless const_defined?(:Intent, false); end; end
module ::Android; module Media; autoload :MediaPlayer, "android/media/MediaPlayer" unless const_defined?(:MediaPlayer, false); end; end
module ::Android; module Os; autoload :IBinder, "android/os/IBinder" unless const_defined?(:IBinder, false); end; end
module ::Org; module Allbinary; module Android; autoload :NullAndroidCanvas, "org/allbinary/android/NullAndroidCanvas" unless const_defined?(:NullAndroidCanvas, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStateStrings, "org/allbinary/string/CommonStateStrings" unless const_defined?(:CommonStateStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MusicStrings, "org/allbinary/media/audio/music/MusicStrings" unless const_defined?(:MusicStrings, false)
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/System"

end; end; end; end; end

