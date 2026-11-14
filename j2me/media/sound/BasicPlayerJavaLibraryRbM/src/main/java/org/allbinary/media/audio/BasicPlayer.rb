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
require "javax/microedition/media/Player"
require "org/allbinary/media/audio/Controllable2"

#BasicPlayerJavaLibrary
class BasicPlayer
    include Player
    include Controllable2
    attr_accessor :commonStrings, :listenersList, :stateP, :loopCountP

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @listenersList = BasicArrayListD.new()
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CONTROL_TYPE, "ToneControl")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicPlayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CONTROL_TYPE].include?(name)
        end
        super
    end
end

autoload :Control, "javax/microedition/media/Control"
autoload :MediaException, "javax/microedition/media/MediaException"
autoload :PlayerListener, "javax/microedition/media/PlayerListener"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :NullControl, "org/allbinary/media/audio/NullControl"

begin
    BasicPlayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

