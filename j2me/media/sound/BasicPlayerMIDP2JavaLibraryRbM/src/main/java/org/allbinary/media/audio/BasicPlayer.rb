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
require "javax/microedition/media/Player"
require "org/allbinary/media/audio/Controllable2"
require "org/allbinary/media/audio/TimeBaseInterface"

module ::Org; module Allbinary; module Media; module Audio

#BasicPlayerMIDP2JavaLibrary
class BasicPlayer
    include ::Javax::Microedition::Media::Player
    include TimeBaseInterface
    include Controllable2
    attr_accessor :listenersList, :timeBase, :stateP, :loopCountP

    def jfields_org_allbinary_media_audio_BasicPlayer
        @listenersList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @timeBase = nil unless instance_variable_defined?(:@timeBase)
        @stateP = 0 unless instance_variable_defined?(:@stateP)
        @loopCountP = 0 unless instance_variable_defined?(:@loopCountP)
    end
    

    def initialize()
        jfields_org_allbinary_media_audio_BasicPlayer
        self.setLoopCount(0)
        self.setState(::Javax::Microedition::Media::Player::UNREALIZED)
    end
    

    def getContentType()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getContentType, 0
    

    def getControl(controlType)
        return NullControl.new()
    end
    java_overload :getControl, 1
    

    def getControls()
        return Array.new(0, nil)
    end
    java_overload :getControls, 0
    

    def close()
    end
    java_overload :close, 0
    

    def addPlayerListener(playerListener)
        java_monitor.synchronize do
        if !@listenersList.contains(playerListener)
            @listenersList.add(playerListener)
        end
        end
    end
    java_overload :addPlayerListener, 1
    

    def removePlayerListener(playerListener)
        @listenersList.remove(playerListener)
    end
    java_overload :removePlayerListener, 1
    

    def getState()
        return @stateP
    end
    java_overload :getState, 0
    

    def setState(state)
        java_monitor.synchronize do
        @stateP = state
        end
    end
    java_overload :setState, 1
    

    def getDuration()
        return 0
    end
    java_overload :getDuration, 0
    

    def getMediaTime()
        return 0
    end
    java_overload :getMediaTime, 0
    

    def getTimeBase()
        return @timeBase
    end
    java_overload :getTimeBase, 0
    

    def setTimeBase(timeBase)
        java_monitor.synchronize do
        @timeBase = timeBase
        end
    end
    java_overload :setTimeBase, 1
    

    def deallocate()
    end
    java_overload :deallocate, 0
    

    # throws MediaException
    def prefetch()
    end
    java_overload :prefetch, 0
    

    # throws MediaException
    def realize()
    end
    java_overload :realize, 0
    

    def setLoopCount(count)
        java_monitor.synchronize do
        @loopCountP = count
        end
    end
    java_overload :setLoopCount, 1
    

    def getLoopCount()
        return @loopCountP
    end
    java_overload :getLoopCount, 0
    

    # throws MediaException
    def setMediaTime(now)
        java_monitor.synchronize do
        return 0
        end
    end
    java_overload :setMediaTime, 1
    

    # throws MediaException
    def start()
        java_monitor.synchronize do
        self.setState(::Javax::Microedition::Media::Player::STARTED)
        end
    end
    java_overload :start, 0
    

    # throws MediaException
    def stop()
        java_monitor.synchronize do
        self.setState(::Javax::Microedition::Media::Player::PREFETCHED)
        end
    end
    java_overload :stop, 0
    

    def setVolume(leftVolume, rightVolume)
    end
    java_overload :setVolume, 2

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

module ::Javax; module Microedition; module Media; autoload :Control, "javax/microedition/media/Control" unless const_defined?(:Control, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :PlayerListener, "javax/microedition/media/PlayerListener" unless const_defined?(:PlayerListener, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :TimeBase, "javax/microedition/media/TimeBase" unless const_defined?(:TimeBase, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :NullControl, "org/allbinary/media/audio/NullControl" unless const_defined?(:NullControl, false)

begin
    BasicPlayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

