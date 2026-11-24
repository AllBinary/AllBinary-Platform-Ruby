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
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Audio

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
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonString = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, commonString.INIT)
        ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        Sounds.new(soundsFactoryInterface).init()
    end
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        Sounds.new(soundsFactoryInterface).stopAll()
        Sounds.new(soundsFactoryInterface).closeAll()
        ::Org::Allbinary::TsUtil.getInstance().gc()
    end
    

    # throws Exception
    def self.createPlayer(resource)
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().SOUND)
            if ::Org::Allbinary::TsUtil.getInstance().compareTo(resource, ::Javax::Microedition::Media::Manager::TONE_DEVICE_LOCATOR) == 0
                return ::Javax::Microedition::Media::Manager.createPlayer(resource)
            else
                inputStream = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceAsStream(resource)
                return ::Org::Allbinary::MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, ::Org::Allbinary::Audio::AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
            end
        else
            return NoPlayer::NO_PLAYER
        end
    end
    

    # throws MediaException
    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().SOUND)
            ::Javax::Microedition::Media::Manager.playTone(frequency, time, volume)
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

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Media; autoload :Manager, "javax/microedition/media/Manager" unless const_defined?(:Manager, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Audio; autoload :AudioContentTypeDataFactory, "org/allbinary/audio/AudioContentTypeDataFactory" unless const_defined?(:AudioContentTypeDataFactory, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :NoPlayer, "org/allbinary/media/audio/NoPlayer" unless const_defined?(:NoPlayer, false)
autoload :Sounds, "org/allbinary/media/audio/Sounds" unless const_defined?(:Sounds, false)
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface" unless const_defined?(:SoundsFactoryInterface, false)

begin
    AllBinaryMediaManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

