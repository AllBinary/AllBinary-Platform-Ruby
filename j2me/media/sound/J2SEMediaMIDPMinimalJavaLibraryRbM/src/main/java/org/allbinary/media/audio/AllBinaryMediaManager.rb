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
# require "java/io/BufferedInputStream"
# require "java/io/ByteArrayInputStream"
# require "java/io/IOException"
# require "java/io/InputStream"
# require "javax/microedition/media/Manager"
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/Player"

#J2SEMediaMIDPMinimalJavaLibrary
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
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        Sounds.new(soundsFactoryInterface).init()
    end
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        Sounds.new(soundsFactoryInterface).stopAll()
        Sounds.new(soundsFactoryInterface).closeAll()
        TsUtil.getInstance().gc()
    end
    

    # throws Exception
    def self.createPlayer(resource)
        if resource.start_with?(Manager::TONE_DEVICE_LOCATOR)
            return AllBinaryMediaManager.createPlayerFromInputStream(ByteArrayInputStream.new(NullUtil.getInstance().NULL_BYTE_ARRAY), AudioContentTypeDataFactory.getInstance().MIME_AUDIO_TONE.getName())
        elsif Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)
            begin
                inputStream = ResourceUtil.getInstance().getResourceAsStream(resource)
                bufferedInputStream = BufferedInputStream.new(inputStream)
                return PCClipWavPlayer.new(bufferedInputStream)
            rescue StandardError => e
                logUtil = LogUtil.getInstance()
                commonString = CommonStrings.getInstance()
                logUtil.put(commonString.EXCEPTION, AllBinaryMediaManager::THIS, CREATE_PLAYER, e)
                return NoPlayer::NO_PLAYER
            end
        else
            return NoPlayer::NO_PLAYER
        end
    end
    

    # throws IOException, MediaException
    def self.createPlayerFromInputStream(stream, type)
        raise MediaException.new("No Impl")
    end
    

    # throws MediaException
    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        raise MediaException.new("No Impl")
        end
    end
    

    def self.isInitialized()
        return true
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/audio/AudioContentTypeDataFactory"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/NoPlayer"
require "org/allbinary/media/audio/PCClipWavPlayer"
require "org/allbinary/media/audio/Sounds"
require "org/allbinary/media/audio/SoundsFactoryInterface"

class AllBinaryMediaManager
    THIS = "AllBinaryMediaManagerPC"
    CREATE_PLAYER = "createPlayer"
end

