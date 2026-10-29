# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music


class MusicManager
    attr_accessor :PLAY, :FOR, :commonStrings, :musicStrings, :commonStateStrings, :basicArrayListUtil, :resourceUtil, :androidServicesUtil, :gameTickTimeDelayHelper, :timeDelayHelper, :timeDelayHelper2, :songList, :currentSongSound, :nextSongSound, :leftVolume, :rightVolume, :musicServiceClass, :currentIntent

    def initialize_fields
        @PLAY = "Play "
        @FOR = " for: "
        @commonStrings = CommonStrings.getInstance()
        @musicStrings = MusicStrings.getInstance()
        @commonStateStrings = CommonStateStrings.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @resourceUtil = ResourceUtil.getInstance()
        @androidServicesUtil = AndroidServicesUtil.getInstance()
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(0)
        @timeDelayHelper2 = TimeDelayHelper.new(1200)
        @songList = nil
        @currentSongSound = NoSound.getInstance()
        @nextSongSound = NoSound.getInstance()
        @leftVolume = 100
        @rightVolume = 100
        @musicServiceClass = nil
        @currentIntent = nil
    end
    

    def initialize(musicServiceClass, songList)
        initialize_fields
        PreLogUtil.put(@commonStateStrings.CONTEXT + @resourceUtil.getContext(), self, @commonStrings.CONSTRUCTOR)
        @musicServiceClass = musicServiceClass
        @currentIntent = Intent.new(@resourceUtil.getContext(), musicServiceClass)
        @songList = songList
    end
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
        if nextSongSound == nil
            nextSongSound = NoSound.getInstance()
        end
        @nextSongSound = nextSongSound
        @leftVolume = leftVolume
        @rightVolume = rightVolume
        self.reset()
    end
    

    def reset()
        @timeDelayHelper.delay = 0
    end
    

    def process()
        if @songList.size() == 0
            return
        end
        if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            self.startNewSong()
            return
        end
        if @timeDelayHelper2.isTime(@gameTickTimeDelayHelper.startTime)
            if @androidServicesUtil.isServiceRunning(@musicServiceClass.getName())
            else
                self.startNewSong()
            end
        end
    end
    

    def show()
        index = @songList.size()
        while (index -= 1) >= 0
            sound = @songList.get(index)
            duration = (sound.getDuration()).to_i
            PreLogUtil.put(StringMaker.new().append(@PLAY).append(sound.getResource()).append(@FOR).appendlong(duration).to_s, self, @commonStrings.PROCESS)
        end
    end
    

    def startNewSong()
        begin
            @resourceUtil.getContext().stopService(@currentIntent)
            if @nextSongSound == NoSound.getInstance()
                @currentSongSound = @basicArrayListUtil.getRandom(@songList)
            else
                @currentSongSound = @nextSongSound
                @nextSongSound = NoSound.getInstance()
            end
            duration = (@currentSongSound.getDuration()).to_i
            PreLogUtil.put(StringMaker.new().append(@PLAY).append(@currentSongSound.getResource()).append(@FOR).appendlong(duration).to_s, self, @commonStrings.PROCESS)
            @timeDelayHelper.delay = duration
            @currentIntent.putExtra(@musicStrings.SONG_EXTRA, @resourceUtil.getResourceId(@currentSongSound.getResource()).to_i)
            @currentIntent.putExtra(@musicStrings.LEFT_VOLUME, @leftVolume)
            @currentIntent.putExtra(@musicStrings.RIGHT_VOLUME, @rightVolume)
            @resourceUtil.getContext().startService(@currentIntent)
        rescue StandardError => e
            resource = StringUtil.getInstance().EMPTY_STRING
            if @currentSongSound != nil
                resource = @currentSongSound.getResource()
            end
            PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.PROCESS, e)
        end
    end
    

    # throws Exception
    def stop()
        @resourceUtil.getContext().stopService(@currentIntent)
    end
    

    def self.pause(activity, musicServiceClass)
        commonStateStrings = CommonStateStrings.getInstance()
        musicPauseIntent = Intent.new(activity, musicServiceClass)
        musicPauseIntent.putExtra(commonStateStrings.ON_START_COMMAND, 1)
        activity.startService(musicPauseIntent)
    end
    

    def self.resume(activity, musicServiceClass)
        if AndroidServicesUtil.getInstance().isServiceRunning(musicServiceClass.getName())
            commonStateStrings = CommonStateStrings.getInstance()
            musicResumeIntent = Intent.new(activity, musicServiceClass)
            musicResumeIntent.putExtra(commonStateStrings.ON_START_COMMAND, 2)
            activity.startService(musicResumeIntent)
        end
    end
end

require "android/app/Activity"
require "android/content/Context"
require "android/content/Intent"
require "org/allbinary/android/AndroidServicesUtil"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/audio/NoSound"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/string/CommonStateStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/media/audio/music/MusicStrings"

