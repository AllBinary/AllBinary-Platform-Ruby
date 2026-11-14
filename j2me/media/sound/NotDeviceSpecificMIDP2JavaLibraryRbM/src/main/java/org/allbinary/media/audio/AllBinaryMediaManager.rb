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
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:THIS, "AllBinaryMediaManagerNoMIPD2")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryMediaManager"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:THIS].include?(name)
        end
        super
    end
end

autoload :InputStream, "java/io/InputStream"
autoload :Manager, "javax/microedition/media/Manager"
autoload :MediaException, "javax/microedition/media/MediaException"
autoload :Player, "javax/microedition/media/Player"
autoload :MIDPUtil, "org/allbinary/MIDPUtil"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :AudioContentTypeDataFactory, "org/allbinary/audio/AudioContentTypeDataFactory"
autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NoPlayer, "org/allbinary/media/audio/NoPlayer"
autoload :Sounds, "org/allbinary/media/audio/Sounds"
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface"

begin
    AllBinaryMediaManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

