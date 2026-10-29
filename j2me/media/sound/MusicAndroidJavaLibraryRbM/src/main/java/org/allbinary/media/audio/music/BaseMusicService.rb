# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music

require "android/app/Service"
require "org/allbinary/thread/ARunnable"

class BaseMusicService < Service
    attr_accessor :logUtil, :commonStrings, :commonStateStrings, :ALREADY_PLAYING, :WAITING_FOR_MUSIC_TO_END, :player, :songId, :leftVolume, :rightVolume

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonStateStrings = CommonStateStrings.getInstance()
        @ALREADY_PLAYING = "This is one song per music service"
        @WAITING_FOR_MUSIC_TO_END = "Waiting for music to end"
        @player = NullAndroidCanvas::NULL_MEDIA_PLAYER
        @songId = -1
        @leftVolume = -1
        @rightVolume = -1
    end

    def initialize
        super()
        initialize_fields
    end
    

    def onBind(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.BIND)
        return nil
    end
    

    def onCreate()
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.CREATE)
    end
    

    def onDestroy()
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.DESTROY)
        if @player != NullAndroidCanvas::NULL_MEDIA_PLAYER
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.PAUSE)
            @player.stop()
            @player.reset()
            @player.release()
        end
    end
    

    def pause()
        if @player != NullAndroidCanvas::NULL_MEDIA_PLAYER
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.PAUSE)
            @player.pause()
        end
    end
    

    def resume()
        if @player != NullAndroidCanvas::NULL_MEDIA_PLAYER && !@player.isPlaying()
            @logUtil.putF(@commonStrings.START, self, @commonStateStrings.RESUME)
            @player.start()
        end
    end
    

    def start()
        @player = MediaPlayer.create(self, @songId)
        @player.setVolume(((@leftVolume).to_f) / 100.0, ((@rightVolume).to_f) / 100.0)
        @player.setLooping(false)
        @player.start()
    end
    

    def onStart(intent, startid)
        self.onStartCommandIntent(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.START)
    end
    

    def onStartCommand(intent, flags, startId)
        self.onStartCommandIntent(intent)
        return Service::START_STICKY
    end
    

    def onStartCommandIntent(intent)
        @logUtil.putF(@commonStrings.START, self, @commonStateStrings.ON_START_COMMAND)
        musicStrings = MusicStrings.getInstance()
        if intent != nil
            command = intent.getIntExtra(@commonStateStrings.ON_START_COMMAND, -1)
            @logUtil.putF(CommonLabels.getInstance().COMMAND_LABEL + command, self, @commonStateStrings.ON_START_COMMAND)
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
            if @player != NullAndroidCanvas::NULL_MEDIA_PLAYER && @player.isPlaying()
                player = @player
                @logUtil.putF(@ALREADY_PLAYING, self, @commonStateStrings.ON_START_COMMAND)
                class MusicRunnable < ARunnable
                    attr_accessor :baseMusicService

                    def initialize_fields
                        @baseMusicService = nil
                    end
                    

                    def initialize(baseMusicService)
                        super()
                        initialize_fields
                        @baseMusicService = baseMusicService
                    end
                    

                    def run()
                        logUtil = LogUtil.getInstance()
                        commonStrings = CommonStrings.getInstance()
                        commonStateStrings = CommonStateStrings.getInstance()
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
                end
                runnable = MusicRunnable.new(self)
                thread = JavaThread.new(runnable)
                thread.start()
                return
            end
            self.start()
        end
    end
end

require "android/content/Intent"
require "android/media/MediaPlayer"
require "android/os/IBinder"
require "org/allbinary/android/NullAndroidCanvas"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStateStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/music/MusicStrings"
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/System"

