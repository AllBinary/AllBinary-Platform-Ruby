# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.audio.music

# require "javax/microedition/media/Player"
# require "javax/microedition/media/PlayerListener"

class MusicManager
    attr_accessor :commonStrings, :commonSeps, :basicArrayListUtil, :gameTickTimeDelayHelper, :playerStateUtil, :timeDelayHelper, :playerListener, :PLAY, :SONG, :NEXT_SONG, :STOPPING, :ENDING, :WAITING_FOR_MEDIA_TO_END, :ALREADY_PLAYING, :ALREADY_ENDED, :songList, :currentSongSound, :nextSongSound, :reset, :noDuration, :stopped
    #Handle Media ending for Avian
    class MusicManagerPlayerListener
        include PlayerListener
        

        def playerUpdate(player, event, eventData)
            PreLogUtil.put(event, self, @commonStrings.PROCESS)
            if event == PlayerListener::END_OF_MEDIA || event == PlayerListener::STOPPED || event == PlayerListener::CLOSED
                reset()
            end
        end
    end

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @playerStateUtil = PlayerStateUtil.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(0)
        @playerListener = MusicManagerPlayerListener.new()
        @PLAY = "Play "
        @SONG = " for: "
        @NEXT_SONG = (CommonLabels.getInstance().NEXT).to_s + " Song: "
        @STOPPING = "Stopping Current Song: "
        @ENDING = "Ending Current Song: "
        @WAITING_FOR_MEDIA_TO_END = "Waiting for media to end"
        @ALREADY_PLAYING = "Already Playing: "
        @ALREADY_ENDED = "Last Song already ended: "
        @songList = nil
        @currentSongSound = NoSound.getInstance()
        @nextSongSound = NoSound.getInstance()
        @reset = false
        @noDuration = false
        @stopped = true
    end
    

    def initialize(musicServiceClass, songList)
        initialize_fields
        @songList = songList
    end
    

    def startNewSong()
        if @nextSongSound == NoSound.getInstance()
            randomSongSound = @basicArrayListUtil.getRandom(@songList)
            self.nextSong(randomSongSound, 0, 0)
        end
        self.process()
    end
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
        PreLogUtil.put(StringMaker.new().append(@NEXT_SONG).append(nextSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
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
                @nextSongSound = NoSound.getInstance()
                if nextSongSound == NoSound.getInstance()
                    @currentSongSound = BasicArrayListUtil.getInstance().getRandom(@songList)
                else
                    @currentSongSound = nextSongSound
                end
                startingCurrentSongSound = @currentSongSound
                duration = (@currentSongSound.getDuration()).to_i
                @timeDelayHelper.delay = duration
                if duration <= 0
                    _NO_DURATION_FOR = "No Duration for: "
                    PreLogUtil.put(StringMaker.new().append(_NO_DURATION_FOR).append(@currentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                    @currentSongSound.getPlayerP().addPlayerListener(@playerListener)
                    @noDuration = true
                end
                if endingCurrentSongSound != NoSound.getInstance()
                    if endingCurrentSongSound == startingCurrentSongSound && endingCurrentSongSound.getPlayerP().getState() == Player::STARTED
                        PreLogUtil.put(StringMaker.new().append(@ALREADY_PLAYING).append(endingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                        PreLogUtil.put(StringMaker.new().append(@STOPPING).append(endingCurrentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                        endingCurrentSongSound.getPlayerP().stop()
                        self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
                    else
                        if endingCurrentSongSound.getPlayerP().getState() == Player::STARTED
                            PreLogUtil.put(StringMaker.new().append(@STOPPING).append(endingCurrentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                            endingCurrentSongSound.getPlayerP().stop()
                            self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
                        else
                            PreLogUtil.put(StringMaker.new().append(@ALREADY_ENDED).append(@PLAY).append(startingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                            if AvianUtil.isAvian()
                                endingCurrentSongSound.getPlayerP().stop()
                                startingCurrentSongSound.getPlayerP().stop()
                            end
                            startingCurrentSongSound.getPlayerP().start()
                        end
                    end
                else
                    PreLogUtil.put(StringMaker.new().append(@PLAY).append(@currentSongSound.getResource()).append(@SONG).appendlong(duration).to_s, self, @commonStrings.PROCESS)
                    @currentSongSound.getPlayerP().start()
                end
            end
        rescue StandardError => e
            resource = StringUtil.getInstance().EMPTY_STRING
            if @currentSongSound != NoSound.getInstance()
                resource = @currentSongSound.getResource()
            end
            PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.PROCESS, e)
        end
    end
    

    # throws Exception
    def waitForStateChange(endingCurrentSongSound, startingCurrentSongSound)
        while endingCurrentSongSound.getPlayerP().getState() == Player::STARTED
            PreLogUtil.put(@WAITING_FOR_MEDIA_TO_END, self, @commonStrings.PROCESS)
            sleep((100) / 1000.0)
        end
        PreLogUtil.put(StringMaker.new().append(@playerStateUtil.convert(endingCurrentSongSound.getPlayerP().getState())).append(@commonSeps.SPACE).append(@PLAY).append(startingCurrentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
        startingCurrentSongSound.getPlayerP().start()
    end
    

    # throws Exception
    def stop()
        begin
            currentSongSound = @currentSongSound
            if currentSongSound != NoSound.getInstance()
                @stopped = true
                PreLogUtil.put(StringMaker.new().append(@ENDING).append(currentSongSound.getResource()).to_s, self, @commonStrings.PROCESS)
                currentSongSound.getPlayerP().stop()
            end
            @timeDelayHelper.setStartTime(0)
            PreLogUtil.put(StringMaker.new().append(@commonStrings.END_).append(StringUtil.getInstance().toString(currentSongSound)).to_s, self, @commonStrings.END_)
        rescue StandardError => e
            resource = StringUtil.getInstance().EMPTY_STRING
            if currentSongSound != NoSound.getInstance()
                resource = currentSongSound.getResource()
            end
            PreLogUtil.putOE((@commonStrings.EXCEPTION_LABEL).to_s + resource, self, @commonStrings.END_, e)
        end
    end
end

require "org/allbinary/thread/ARunnable"
require "org/allbinary/AvianUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/audio/NoSound"
require "org/allbinary/media/audio/PlayerStateUtil"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "java/lang/Thread"

