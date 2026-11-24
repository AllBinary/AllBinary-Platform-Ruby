# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Audio; module Music

class MusicManager
    attr_accessor :PLAY, :FOR, :commonStrings, :musicStrings, :commonStateStrings, :basicArrayListUtil, :resourceUtil, :androidServicesUtil, :gameTickTimeDelayHelper, :timeDelayHelper, :timeDelayHelper2, :songList, :currentSongSound, :nextSongSound, :leftVolume, :rightVolume, :musicServiceClass, :currentIntent

    def jfields_org_allbinary_media_audio_music_MusicManager
        @PLAY = "Play "
        @FOR = " for: "
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @musicStrings = MusicStrings.getInstance()
        @commonStateStrings = ::Org::Allbinary::StringPackage::CommonStateStrings.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        @androidServicesUtil = ::Org::Allbinary::Android::AndroidServicesUtil.getInstance()
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @timeDelayHelper2 = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1200)
        @songList = nil unless instance_variable_defined?(:@songList)
        @currentSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
        @nextSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
        @leftVolume = 100
        @rightVolume = 100
        @musicServiceClass = nil unless instance_variable_defined?(:@musicServiceClass)
        @currentIntent = nil unless instance_variable_defined?(:@currentIntent)
    end
    

    def initialize(musicServiceClass, songList)
        jfields_org_allbinary_media_audio_music_MusicManager
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@commonStateStrings.CONTEXT + @resourceUtil.getContext(), self, @commonStrings.CONSTRUCTOR)
        @musicServiceClass = musicServiceClass
        @currentIntent = ::Android::Content::Intent.new(@resourceUtil.getContext(), musicServiceClass)
        @songList = songList
    end
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
        if nextSongSound == nil
            nextSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
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
            if @androidServicesUtil.isServiceRunning(@musicServiceClass.java_name)
            else
                self.startNewSong()
            end
        end
    end
    

    def show()
        index = @songList.size()
        while (index -= 1) >= 0
            sound = @songList.get(index)
            duration = ((sound.getDuration()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@PLAY).append(sound.getResource()).append(@FOR).appendlong(duration).to_s, self, @commonStrings.PROCESS)
        end
    end
    

    def startNewSong()
        begin
            @resourceUtil.getContext().stopService(@currentIntent)
            if @nextSongSound == ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                @currentSongSound = @basicArrayListUtil.getRandom(@songList)
            else
                @currentSongSound = @nextSongSound
                @nextSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
            end
            duration = ((@currentSongSound.getDuration()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@PLAY).append(@currentSongSound.getResource()).append(@FOR).appendlong(duration).to_s, self, @commonStrings.PROCESS)
            @timeDelayHelper.delay = duration
            @currentIntent.putExtra(@musicStrings.SONG_EXTRA, @resourceUtil.getResourceId(@currentSongSound.getResource()).to_i)
            @currentIntent.putExtra(@musicStrings.LEFT_VOLUME, @leftVolume)
            @currentIntent.putExtra(@musicStrings.RIGHT_VOLUME, @rightVolume)
            @resourceUtil.getContext().startService(@currentIntent)
        rescue StandardError => e
            resource = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if @currentSongSound != nil
                resource = @currentSongSound.getResource()
            end
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.PROCESS, e)
        end
    end
    

    # throws Exception
    def stop()
        @resourceUtil.getContext().stopService(@currentIntent)
    end
    

    def self.pause(activity, musicServiceClass)
        commonStateStrings = ::Org::Allbinary::StringPackage::CommonStateStrings.getInstance()
        musicPauseIntent = ::Android::Content::Intent.new(activity, musicServiceClass)
        musicPauseIntent.putExtra(commonStateStrings.ON_START_COMMAND, 1)
        activity.startService(musicPauseIntent)
    end
    

    def self.resume(activity, musicServiceClass)
        if ::Org::Allbinary::Android::AndroidServicesUtil.getInstance().isServiceRunning(musicServiceClass.java_name)
            commonStateStrings = ::Org::Allbinary::StringPackage::CommonStateStrings.getInstance()
            musicResumeIntent = ::Android::Content::Intent.new(activity, musicServiceClass)
            musicResumeIntent.putExtra(commonStateStrings.ON_START_COMMAND, 2)
            activity.startService(musicResumeIntent)
        end
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Content; autoload :Intent, "android/content/Intent" unless const_defined?(:Intent, false); end; end
module ::Org; module Allbinary; module Android; autoload :AndroidServicesUtil, "org/allbinary/android/AndroidServicesUtil" unless const_defined?(:AndroidServicesUtil, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :NoSound, "org/allbinary/media/audio/NoSound" unless const_defined?(:NoSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStateStrings, "org/allbinary/string/CommonStateStrings" unless const_defined?(:CommonStateStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :MusicStrings, "org/allbinary/media/audio/music/MusicStrings" unless const_defined?(:MusicStrings, false)

end; end; end; end; end

