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
# require "javax/microedition/media/MediaException"
# require "javax/microedition/media/Player"
# require "javax/microedition/media/PlayerListener"
# require "javax/microedition/media/TimeBase"
require "org/allbinary/media/audio/Controllable2"
require "org/allbinary/media/audio/TimeBaseInterface"

#BasicPlayerMIDP2JavaLibrary
class BasicPlayer
    include Player
    include TimeBaseInterface
    include Controllable2
    attr_accessor :listenersList, :timeBase, :stateP, :loopCountP

    def initialize_fields
        @listenersList = BasicArrayListD.new()
        @timeBase = nil
        @stateP = 0
        @loopCountP = 0
    end
    

    def initialize()
        initialize_fields
        self.setLoopCount(0)
        self.setState(Player::UNREALIZED)
    end
    

    def getContentType()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def getControl(controlType)
        return NullControl.new()
    end
    

    def getControls()
        return Array.new(0, nil)
    end
    

    def close()
    end
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        if !@listenersList.contains(playerListener)
            @listenersList.add(playerListener)
        end
        end
    end
    

    def removePlayerListener(playerListener)
        @listenersList.remove(playerListener)
    end
    

    def getState()
        return @stateP
    end
    

    def setState(state)
        java_monitor.synchronize do
        @stateP = state
        end
    end
    

    def getDuration()
        return 0
    end
    

    def getMediaTime()
        return 0
    end
    

    def getTimeBase()
        return @timeBase
    end
    

    def setTimeBase(timeBase)
        java_monitor.synchronize do
        @timeBase = timeBase
        end
    end
    

    def deallocate()
    end
    

    # throws MediaException
    def prefetch()
    end
    

    # throws MediaException
    def realize()
    end
    

    def setLoopCount(count)
        java_monitor.synchronize do
        @loopCountP = count
        end
    end
    

    def getLoopCount()
        return @loopCountP
    end
    

    # throws MediaException
    def setMediaTime(now)
        java_monitor.synchronize do
        return 0
        end
    end
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        self.setState(Player::STARTED)
        end
    end
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        self.setState(Player::PREFETCHED)
        end
    end
    

    def setVolume(leftVolume, rightVolume)
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/media/audio/NullControl"

class BasicPlayer
    CONTROL_TYPE = "ToneControl"
end

