# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music

require "java/lang/JavaOverload"
require "javax/microedition/media/PlayerListener"

module ::Org; module Allbinary; module Media; module Audio; module Music

class MusicManager
    attr_accessor :commonStrings, :commonSeps, :basicArrayListUtil, :gameTickTimeDelayHelper, :playerStateUtil, :timeDelayHelper, :playerListener, :PLAY, :SONG, :NEXT_SONG, :STOPPING, :ENDING, :WAITING_FOR_MEDIA_TO_END, :ALREADY_PLAYING, :ALREADY_ENDED, :songList, :currentSongSound, :nextSongSound, :reset, :noDuration, :stopped
    #Handle Media ending for Avian
    class MusicManagerPlayerListener
        include ::Javax::Microedition::Media::PlayerListener
        attr_accessor :musicManager

        def jfields_org_allbinary_media_audio_music_MusicManager_MusicManagerPlayerListener
            @musicManager = nil unless instance_variable_defined?(:@musicManager)
        end
        

        def initialize(musicManager)
            jfields_org_allbinary_media_audio_music_MusicManager_MusicManagerPlayerListener
            @musicManager = musicManager
        end
        

        def playerUpdate(player, event, eventData)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(event, self, @musicManager.commonStrings.PROCESS)
            if event == ::Javax::Microedition::Media::PlayerListener::END_OF_MEDIA || event == ::Javax::Microedition::Media::PlayerListener::STOPPED || event == ::Javax::Microedition::Media::PlayerListener::CLOSED
                @musicManager.reset()
            end
        end
        java_overload :playerUpdate, 3
    end

    def jfields_org_allbinary_media_audio_music_MusicManager
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @playerStateUtil = ::Org::Allbinary::Media::Audio::PlayerStateUtil.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @playerListener = MusicManagerPlayerListener.new(self)
        @PLAY = "Play "
        @SONG = " for: "
        @NEXT_SONG = (::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).to_s + " Song: "
        @STOPPING = "Stopping Current Song: "
        @ENDING = "Ending Current Song: "
        @WAITING_FOR_MEDIA_TO_END = "Waiting for media to end"
        @ALREADY_PLAYING = "Already Playing: "
        @ALREADY_ENDED = "Last Song already ended: "
        @songList = nil unless instance_variable_defined?(:@songList)
        @currentSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
        @nextSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
        @reset = false unless instance_variable_defined?(:@reset)
        @noDuration = false unless instance_variable_defined?(:@noDuration)
        @stopped = true
    end
    

    def initialize(musicServiceClass, songList)
        jfields_org_allbinary_media_audio_music_MusicManager
        @songList = songList
    end
    

    def startNewSong()
        if @nextSongSound == ::Org::Allbinary::Media::Audio::NoSound.getInstance()
            randomSongSound = @basicArrayListUtil.getRandom(@songList)
            self.nextSong(randomSongSound, 0, 0)
        end
        self.process()
    end
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@NEXT_SONG).append(nextSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
        @nextSongSound = nextSongSound
        self.reset()
        @stopped = false
    end
    

    def reset()
        @reset = true
    end
    

    def process()
        begin
            if @stopped
                return
            end
            if @songList.size() == 0
                return
            end
            if (@timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime) && !@noDuration) || @reset
                @reset = false
                @noDuration = false
                endingCurrentSongSound = @currentSongSound
                nextSongSound = @nextSongSound
                @nextSongSound = ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                if nextSongSound == ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                    @currentSongSound = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getRandom(@songList)
                else
                    @currentSongSound = nextSongSound
                end
                startingCurrentSongSound = @currentSongSound
                duration = ((@currentSongSound.getDuration()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                @timeDelayHelper.delay = duration
                if duration <= 0
                    _NO_DURATION_FOR = "No Duration for: "
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_NO_DURATION_FOR).append(@currentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                    @currentSongSound.getPlayerP().addPlayerListener(@playerListener)
                    @noDuration = true
                end
                if endingCurrentSongSound != ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                    if endingCurrentSongSound == startingCurrentSongSound && endingCurrentSongSound.getPlayerP().getState() == ::Javax::Microedition::Media::Player::STARTED
                        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@ALREADY_PLAYING).append(endingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@STOPPING).append(endingCurrentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                        endingCurrentSongSound.getPlayerP().stop()
                        self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
                    else
                        if endingCurrentSongSound.getPlayerP().getState() == ::Javax::Microedition::Media::Player::STARTED
                            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@STOPPING).append(endingCurrentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                            endingCurrentSongSound.getPlayerP().stop()
                            self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
                        else
                            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@ALREADY_ENDED).append(@PLAY).append(startingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                            if ::Org::Allbinary::AvianUtil.isAvian()
                                endingCurrentSongSound.getPlayerP().stop()
                                startingCurrentSongSound.getPlayerP().stop()
                            end
                            startingCurrentSongSound.getPlayerP().start()
                        end
                    end
                else
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@PLAY).append(@currentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                    @currentSongSound.getPlayerP().start()
                end
            end
        rescue StandardError => e
            resource = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if @currentSongSound != ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                resource = @currentSongSound.getResource()
            end
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.PROCESS, e)
        end
    end
    

    # throws Exception
    def waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
        while endingCurrentSongSound.getPlayerP().getState() == ::Javax::Microedition::Media::Player::STARTED
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@WAITING_FOR_MEDIA_TO_END, self, @commonStrings.PROCESS)
            sleep((100) / 1000.0)
        end
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@playerStateUtil.convert(endingCurrentSongSound.getPlayerP().getState())).append(@commonSeps.SPACE).append(@PLAY).append(startingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
        startingCurrentSongSound.getPlayerP().start()
    end
    

    # throws Exception
    def stop()
        begin
            currentSongSound = @currentSongSound
            if currentSongSound != ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                @stopped = true
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@ENDING).append(currentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                currentSongSound.getPlayerP().stop()
            end
            @timeDelayHelper.setStartTime(0)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.END_).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(currentSongSound)).to_s, self, @commonStrings.END_)
        rescue StandardError => e
            resource = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if currentSongSound != ::Org::Allbinary::Media::Audio::NoSound.getInstance()
                resource = currentSongSound.getResource()
            end
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.END_, e)
        end
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; autoload :AvianUtil, "org/allbinary/AvianUtil" unless const_defined?(:AvianUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :NoSound, "org/allbinary/media/audio/NoSound" unless const_defined?(:NoSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PlayerStateUtil, "org/allbinary/media/audio/PlayerStateUtil" unless const_defined?(:PlayerStateUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
require "java/lang/Thread"

end; end; end; end; end

