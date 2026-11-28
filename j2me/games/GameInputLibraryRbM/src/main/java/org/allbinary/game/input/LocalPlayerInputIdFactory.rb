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
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class LocalPlayerInputIdFactory
    attr_accessor :logUtil, :MAX_NUMBER_OF_PLAYERS, :MAX_FAST_DEVICEID, :deviceIdToplayerId, :playerIdToDeviceId, :playersInPlay, :totalDevicesMapped

    def jfields_org_allbinary_game_input_LocalPlayerInputIdFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @MAX_NUMBER_OF_PLAYERS = 6
        @MAX_FAST_DEVICEID = 65
        @deviceIdToplayerId = (Array.new(@MAX_FAST_DEVICEID, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @playerIdToDeviceId = (Array.new(@MAX_NUMBER_OF_PLAYERS, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @playersInPlay = (Array.new(@MAX_NUMBER_OF_PLAYERS, false)).tap { |java_array| java_array.instance_variable_set(:@java_component, :Z) }
        @totalDevicesMapped = 0
    end
    

    def initialize()
        jfields_org_allbinary_game_input_LocalPlayerInputIdFactory
        (@deviceIdToplayerId.length - 1).step(0, -(1)) do |index|
            @deviceIdToplayerId[index] = -1
        end
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getDeviceId(playerInputId)
        return @playerIdToDeviceId[playerInputId]
    end
    

    def getPlayerForDevice(deviceId)
        index = 0
        if deviceId < @MAX_FAST_DEVICEID
            playerInputId = @deviceIdToplayerId[deviceId]
            if playerInputId != -1
                return playerInputId
            end
        else
            (@totalDevicesMapped - 1).step(0, -(1)) do |index|
                if @playerIdToDeviceId[index] == deviceId
                    return index
                end
            end
        end
        index = @totalDevicesMapped
        if deviceId < @MAX_FAST_DEVICEID
            @deviceIdToplayerId[deviceId] = index
        else
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").to_s, self, "getPlayerForDevice")
        end
        @playerIdToDeviceId[index] = deviceId
        ::Org::Allbinary::Game::Input::Analog::AnalogLocationInputFactory.getInstance().addPlayer(@totalDevicesMapped)
        @totalDevicesMapped += 1
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(@totalDevicesMapped).to_s, self, "getPlayerForDevice")
        return index
    end
    

    def getTotalDevicesInPlay()
        total = 0
        (@totalDevicesMapped - 1).step(0, -(1)) do |index|
            if @playersInPlay[index] == true
                total += 1
            end
        end
        return total
    end
    

    def isPlayerInPlay(playerInputId)
        return @playersInPlay[playerInputId]
    end
    

    def setPlayerInPlay(playerInputId)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).to_s, self, "setPlayerInPlay")
        @playersInPlay[playerInputId] = true
    end
    

    def setPlayerOutOfPlay(playerInputId)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).to_s, self, "setPlayerOutOfPlay")
        @playersInPlay[playerInputId] = false
    end
    

    def getPlayersInPlay()
        return @playersInPlay
    end

    def self.instance()
        LocalPlayerInputIdFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LocalPlayerInputIdFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LocalPlayerInputIdFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LocalPlayerInputIdFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInputFactory, "org/allbinary/game/input/analog/AnalogLocationInputFactory" unless const_defined?(:AnalogLocationInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    LocalPlayerInputIdFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

