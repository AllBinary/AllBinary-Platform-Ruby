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
require "java/lang/JavaOverload"
require "javax/microedition/media/Controllable"
require "javax/microedition/media/Player"

module ::Org; module Allbinary; module Media; module Audio

#BasicPlayerMIDP2
class PlayerComposite
    include ::Javax::Microedition::Media::Controllable
    include ::Javax::Microedition::Media::Player
    attr_accessor :logUtil, :commonStrings, :player, :timeElapsedHelper, :gameTickTimeDelayHelper

    def jfields_org_allbinary_media_audio_PlayerComposite
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @player = nil unless instance_variable_defined?(:@player)
        @timeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(player, repeatTime)
        jfields_org_allbinary_media_audio_PlayerComposite
        @player = player
        @timeElapsedHelper.delay = repeatTime
    end
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        @player.addPlayerListener(playerListener)
        end
    end
    java_overload :addPlayerListener, 1
    

    def removePlayerListener(playerListener)
        @player.removePlayerListener(playerListener)
    end
    java_overload :removePlayerListener, 1
    

    def close()
        @player.close()
    end
    java_overload :close, 0
    

    def deallocate()
        @player.deallocate()
    end
    java_overload :deallocate, 0
    

    def getContentType()
        return @player.getContentType()
    end
    java_overload :getContentType, 0
    

    def getDuration()
        return @player.getDuration()
    end
    java_overload :getDuration, 0
    

    def getMediaTime()
        return @player.getMediaTime()
    end
    java_overload :getMediaTime, 0
    

    def getTimeBase()
        return (@player).getTimeBase()
    end
    java_overload :getTimeBase, 0
    

    # throws MediaException
    def setTimeBase(timeBase)
        java_monitor.synchronize do
        (@player).setTimeBase(timeBase)
        end
    end
    java_overload :setTimeBase, 1
    

    def prefetch()
        begin
            @player.prefetch()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "prefetch", e)
        end
    end
    java_overload :prefetch, 0
    

    def realize()
        begin
            @player.realize()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "realize", e)
        end
    end
    java_overload :realize, 0
    

    def getState()
        return @player.getState()
    end
    java_overload :getState, 0
    

    def setLoopCount(count)
        @player.setLoopCount(count)
    end
    java_overload :setLoopCount, 1
    

    def setMediaTime(now)
        begin
            return @player.setMediaTime(now)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setMediaTime", e)
            return -1
        end
    end
    java_overload :setMediaTime, 1
    

    def start()
        begin
            if @timeElapsedHelper.isTime(@gameTickTimeDelayHelper.startTime)
                @player.start()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    java_overload :start, 0
    

    def stop()
        begin
            @player.stop()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "stop", e)
        end
    end
    java_overload :stop, 0
    

    def getControl(controlType)
        return @player.getControl(controlType)
    end
    java_overload :getControl, 1
    

    def getControls()
        raise RuntimeError.new()
    end
    java_overload :getControls, 0
    

    def setVolume(leftVolume, rightVolume)
        controllable2 = (@player)
        controllable2.setVolume(leftVolume, rightVolume)
    end
    java_overload :setVolume, 2
    

    def getPlayerP()
        return @player
    end
    java_overload :getPlayerP, 0
end

module ::Javax; module Microedition; module Media; autoload :Control, "javax/microedition/media/Control" unless const_defined?(:Control, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :PlayerListener, "javax/microedition/media/PlayerListener" unless const_defined?(:PlayerListener, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :TimeBase, "javax/microedition/media/TimeBase" unless const_defined?(:TimeBase, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :Controllable2, "org/allbinary/media/audio/Controllable2" unless const_defined?(:Controllable2, false)
autoload :TimeBaseInterface, "org/allbinary/media/audio/TimeBaseInterface" unless const_defined?(:TimeBaseInterface, false)

end; end; end; end

