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
# require "java/io/InputStream"
# require "javax/microedition/media/Manager"
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/Player"

#NotDeviceSpecificMIDP2JavaLibrary
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
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)
            if TsUtil.getInstance().compareTo(resource, Manager::TONE_DEVICE_LOCATOR) == 0
                return Manager.createPlayer(resource)
            else
                inputStream = ResourceUtil.getInstance().getResourceAsStream(resource)
                return Manager.createPlayer(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
            end
        else
            return NoPlayer::NO_PLAYER
        end
    end
    

    # throws MediaException
    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)
            Manager.playTone(frequency, time, volume)
        end
        end
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/audio/AudioContentTypeDataFactory"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/NoPlayer"
require "org/allbinary/media/audio/Sounds"
require "org/allbinary/media/audio/SoundsFactoryInterface"

class AllBinaryMediaManager
    THIS = "AllBinaryMediaManagerNoMIPD2"
end

