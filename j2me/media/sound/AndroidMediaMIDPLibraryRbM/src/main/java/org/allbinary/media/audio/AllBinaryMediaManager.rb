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
# require "java/io/IOException"

module ::Org; module Allbinary; module Media; module Audio

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
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonString = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonString.START, THIS, commonString.INIT)
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)
        ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        ::Org::Allbinary::TsUtil.getInstance().gc()
        Sounds.new(soundsFactoryInterface).init()
        logUtil.putF(commonString.END_, THIS, commonString.INIT)
    end
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonString = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonString.START, THIS, "shutdown")
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
                            raise StandardError.new("Unknown Property Player: " + player.class.java_name)
                        end
                    end
                end
            end
            Sounds.new(soundsFactoryInterface).closeAll()
            ::Org::Allbinary::TsUtil.getInstance().gc()
            soundsFactoryInterface.setInitialized(false)
            @@mostUsedTotal = 0
        end
        logUtil.putF(commonString.START, THIS, "shutdown")
    end
    

    # throws Exception
    def self.createPlayer(resource)
        @@mostUsedTotal += 1
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().SOUND)
            begin
                return AndroidMediaPlayerWrapper.new(resource)
            rescue StandardError => e
                logUtil.put("Could not create AndroidMediaPlayerWrapper using NoPlayer at " + (::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL).to_s + (@@mostUsedTotal).to_s, THIS, "createPlayer", e)
                return NoPlayer::NO_PLAYER
            end
        else
            return NoPlayer::NO_PLAYER
        end
    end
    

    # throws IOException, MediaException
    def self.createPlayerFromInputStream(stream, type)
        raise ::Javax::Microedition::Media::MediaException.new("No Input Stream Player")
    end
    

    # throws MediaException
    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        raise ::Javax::Microedition::Media::MediaException.new("No Tone Player")
        end
    end
    

    def self.isInitialized()
        return true
    end

    def self.mostUsedTotal()
        AllBinaryMediaManager.java_static_fields unless @java_static_fields_started
        return defined?(@@mostUsedTotal) ? @@mostUsedTotal : nil
    end

    def self.mostUsedTotal=(value)
        AllBinaryMediaManager.java_static_fields unless @java_static_fields_started
        @@mostUsedTotal = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:THIS, "AllBinaryMediaManagerAndroid")
        @@mostUsedTotal = 0
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
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AndroidMediaPlayerWrapper, "org/allbinary/media/audio/AndroidMediaPlayerWrapper" unless const_defined?(:AndroidMediaPlayerWrapper, false)
autoload :MediaPlayerUtil, "org/allbinary/media/audio/MediaPlayerUtil" unless const_defined?(:MediaPlayerUtil, false)
autoload :NoPlayer, "org/allbinary/media/audio/NoPlayer" unless const_defined?(:NoPlayer, false)
autoload :PlayerComposite, "org/allbinary/media/audio/PlayerComposite" unless const_defined?(:PlayerComposite, false)
autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false)
autoload :Sounds, "org/allbinary/media/audio/Sounds" unless const_defined?(:Sounds, false)
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface" unless const_defined?(:SoundsFactoryInterface, false)

begin
    AllBinaryMediaManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

