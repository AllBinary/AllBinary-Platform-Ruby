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
# require "javax/microedition/media/Player"

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
    

    def self.createPlayerFromInputStream(stream, type)
        logUtil = LogUtil.getInstance()
        commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "creatPlayer(InputStream)")
        return NoPlayer::NO_PLAYER
    end
    

    def self.createPlayer(locator)
        logUtil = LogUtil.getInstance()
        commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager::THIS, "creatPlayer(locator)")
        return NoPlayer::NO_PLAYER
    end
    

    def self.playTone(frequency, time, volume)
        java_monitor.synchronize do
        end
    end
    

    def self.getSupportedContentTypes(protocol)
        return StringUtil.getInstance().getArrayInstance()
    end
    

    def self.getSupportedProtocols(content_type)
        return StringUtil.getInstance().getArrayInstance()
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/NoPlayer"
require "org/allbinary/media/audio/Sounds"
require "org/allbinary/media/audio/SoundsFactoryInterface"

class AllBinaryMediaManager
    THIS = "AllBinaryMediaManagerNoMediaMIDP1"
end

