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

module ::Org; module Allbinary; module Media; module Audio

#NotDeviceSpecificNoMediaMIDP1Library
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
    

    def self.createPlayerFromInputStream(stream, type)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonString = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "creatPlayer(InputStream)")
        return NoPlayer::NO_PLAYER
    end
    

    def self.createPlayer(locator)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonString = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "creatPlayer(locator)")
        return NoPlayer::NO_PLAYER
    end
    

    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        end
    end
    

    def self.getSupportedContentTypes(protocol)
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
    end
    

    def self.getSupportedProtocols(content_type)
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:THIS, "AllBinaryMediaManagerNoMediaMIDP1")
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
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
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

