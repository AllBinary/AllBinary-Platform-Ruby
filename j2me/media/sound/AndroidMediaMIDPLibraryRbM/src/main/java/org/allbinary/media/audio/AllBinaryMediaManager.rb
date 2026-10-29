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
# require "java/io/IOException"
# require "java/io/InputStream"
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/Player"

#AndroidMediaMIDPLibrary
class AllBinaryMediaManager
    

    def initialize()
    end
    

    def self.isMuted()
        return false
    end
    

    def self.setMuted(aMuted)
    end
    

    def self.update()
        return true
    end
    

    # throws Exception
    def self.init(soundsFactoryInterface)
        logUtil = LogUtil.getInstance()
        commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, commonString.INIT)
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        TsUtil.getInstance().gc()
        Sounds.new(soundsFactoryInterface).init()
        logUtil.putF(commonString.END_, AllBinaryMediaManager::THIS, commonString.INIT)
    end
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        logUtil = LogUtil.getInstance()
        commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "shutdown")
        if soundsFactoryInterface.isInitialized()
            Sounds.new(soundsFactoryInterface).stopAll()
            soundInterfaceArray = soundsFactoryInterface.getSoundInterfaceArray()
            player = nil
            player2 = nil
            androidMediaPlayerWrapper = nil
            (0...soundInterfaceArray.length).each do |i|
                if soundInterfaceArray[i] != nil
                    player = soundInterfaceArray[i].getPlayerP()
                    if player != nil
                        player2 = (player).getPlayerP()
                        if player2.is_a?(AndroidMediaPlayerWrapper)
                            androidMediaPlayerWrapper = player2
                            MediaPlayerUtil.getInstance().waitForMediaPlayer(androidMediaPlayerWrapper.getMediaPlayer())
                        else
                            raise StandardError.new("Unknown Property Player: " + player.class.name)
                        end
                    end
                end
            end
            Sounds.new(soundsFactoryInterface).closeAll()
            TsUtil.getInstance().gc()
            soundsFactoryInterface.setInitialized(false)
            AllBinaryMediaManager.mostUsedTotal = 0
        end
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "shutdown")
    end
    

    # throws Exception
    def self.createPlayer(resource)
        AllBinaryMediaManager.mostUsedTotal += 1
        logUtil = LogUtil.getInstance()
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)
            begin
                return AndroidMediaPlayerWrapper.new(resource)
            rescue StandardError => e
                logUtil.put("Could not create AndroidMediaPlayerWrapper using NoPlayer at " + (CommonLabels.getInstance().TOTAL_LABEL).to_s + (AllBinaryMediaManager.mostUsedTotal).to_s, AllBinaryMediaManager::THIS, "createPlayer", e)
                return NoPlayer::NO_PLAYER
            end
        else
            return NoPlayer::NO_PLAYER
        end
    end
    

    # throws IOException, MediaException
    def self.createPlayerFromInputStream(stream, type)
        raise MediaException.new("No Input Stream Player")
    end
    

    # throws MediaException
    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        raise MediaException.new("No Tone Player")
        end
    end
    

    def self.isInitialized()
        return true
    end

    def self.mostUsedTotal()
        return defined?(@@mostUsedTotal) ? @@mostUsedTotal : nil
    end

    def self.mostUsedTotal=(value)
        @@mostUsedTotal = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/AndroidMediaPlayerWrapper"
require "org/allbinary/media/audio/MediaPlayerUtil"
require "org/allbinary/media/audio/NoPlayer"
require "org/allbinary/media/audio/PlayerComposite"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/media/audio/Sounds"
require "org/allbinary/media/audio/SoundsFactoryInterface"

class AllBinaryMediaManager
    THIS = "AllBinaryMediaManagerAndroid"
    @@mostUsedTotal = 0
end

