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
# require "javax/microedition/media/Control"
# require "javax/microedition/media/Controllable"
# require "javax/microedition/media/Player"
# require "javax/microedition/media/PlayerListener"

#BasicPlayer
class PlayerComposite
    include Controllable
    include Player
    attr_accessor :logUtil, :commonStrings, :player, :timeElapsedHelper, :gameTickTimeDelayHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @player = nil
        @timeElapsedHelper = TimeDelayHelper.new(0)
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(player, repeatTime)
        initialize_fields
        @player = player
        @timeElapsedHelper.delay = repeatTime
    end
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        @player.addPlayerListener(playerListener)
        end
    end
    

    def removePlayerListener(playerListener)
        @player.removePlayerListener(playerListener)
    end
    

    def close()
        @player.close()
    end
    

    def deallocate()
        @player.deallocate()
    end
    

    def getContentType()
        return @player.getContentType()
    end
    

    def getDuration()
        return @player.getDuration()
    end
    

    def getMediaTime()
        return @player.getMediaTime()
    end
    

    def prefetch()
        begin
            @player.prefetch()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "prefetch", e)
        end
    end
    

    def realize()
        begin
            @player.realize()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "realize", e)
        end
    end
    

    def getState()
        return @player.getState()
    end
    

    def setLoopCount(count)
        @player.setLoopCount(count)
    end
    

    def setMediaTime(now)
        begin
            return @player.setMediaTime(now)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setMediaTime", e)
            return -1
        end
    end
    

    def start()
        begin
            if @timeElapsedHelper.isTime(@gameTickTimeDelayHelper.startTime)
                @player.start()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    

    def stop()
        begin
            @player.stop()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "stop", e)
        end
    end
    

    def getControl(controlType)
        return @player.getControl(controlType)
    end
    

    def getControls()
        raise RuntimeError.new()
    end
    

    def setVolume(leftVolume, rightVolume)
        controllable2 = (@player)
        controllable2.setVolume(leftVolume, rightVolume)
    end
    

    def getPlayerP()
        return @player
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/media/audio/Controllable2"

