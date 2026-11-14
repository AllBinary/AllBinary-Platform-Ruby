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


class LocalPlayerInputIdFactory
    attr_accessor :logUtil, :MAX_NUMBER_OF_PLAYERS, :MAX_FAST_DEVICEID, :deviceIdToplayerId, :playerIdToDeviceId, :playersInPlay, :totalDevicesMapped

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @MAX_NUMBER_OF_PLAYERS = 6
        @MAX_FAST_DEVICEID = 65
        @deviceIdToplayerId = Array.new(@MAX_FAST_DEVICEID, 0)
        @playerIdToDeviceId = Array.new(@MAX_NUMBER_OF_PLAYERS, 0)
        @playersInPlay = Array.new(@MAX_NUMBER_OF_PLAYERS, false)
        @totalDevicesMapped = 0
    end
    

    def initialize()
        initialize_fields
        (@deviceIdToplayerId.length - 1).step(0, -(1)) do |index|
            @deviceIdToplayerId[index] = -1
        end
    end
    

    def self.getInstance()
        return LocalPlayerInputIdFactory.instance
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
            @logUtil.putF(StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").to_s, self, "getPlayerForDevice")
        end
        @playerIdToDeviceId[index] = deviceId
        AnalogLocationInputFactory.getInstance().addPlayer(@totalDevicesMapped)
        @totalDevicesMapped += 1
        @logUtil.putF(StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(@totalDevicesMapped).to_s, self, "getPlayerForDevice")
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
        @logUtil.putF(StringMaker.new().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).to_s, self, "setPlayerInPlay")
        @playersInPlay[playerInputId] = true
    end
    

    def setPlayerOutOfPlay(playerInputId)
        @logUtil.putF(StringMaker.new().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).to_s, self, "setPlayerOutOfPlay")
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

autoload :AnalogLocationInputFactory, "org/allbinary/game/input/analog/AnalogLocationInputFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    LocalPlayerInputIdFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

