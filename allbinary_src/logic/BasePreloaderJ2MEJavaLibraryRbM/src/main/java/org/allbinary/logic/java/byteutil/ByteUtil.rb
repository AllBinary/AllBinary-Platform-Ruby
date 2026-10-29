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
# package org.allbinary.logic.java.byteutil


class ByteUtil
    

    def self.getInstance()
        return ByteUtil.instance
    end
    

    def initialize()
    end
    

    def xor(array, mask)
        bytes = Array.new(array.length, 0)
        size = array.length
        index = 0
        currentByte = 0
        while index < size
            currentByte = array[index]
            bytes[index] = ((((currentByte ^ mask)).to_i + 128) % 256 - 128)
            index += 1
        end
        return bytes
    end
    

    def not_(array)
        bytes = Array.new(array.length, 0)
        size = array.length
        index = 0
        while index < size
            bytes[index] = (((~array[index]).to_i + 128) % 256 - 128)
            index += 1
        end
        return bytes
    end
    

    def xorByte(array, index)
        mask = 0
        if index == 0
            mask = 1
        end
        if index == 1
            mask = 2
        end
        if index == 2
            mask = 4
        end
        if index == 3
            mask = 8
        end
        if index == 4
            mask = 16
        end
        if index == 5
            mask = 32
        end
        if index == 6
            mask = 64
        end
        if index == 7
            mask = (((-127).to_i + 128) % 256 - 128)
        end
        return self.xor(array, mask)
    end
    

    def compare(newByteArray, oldByteArray)
        if newByteArray.length != oldByteArray.length
            return false
        else
        end
        size = newByteArray.length
        (0...size).each do |index|
            if newByteArray[index] != oldByteArray[index]
                return false
            end
        end
        return true
    end
    

    def compareWithStats(newByteArray, newSize, oldByteArray, stats)
        if newSize != oldByteArray.length
            stats[0] = -1
            stats[2] = newSize
            stats[3] = oldByteArray.length
            return false
        else
            stats[0] = newSize
        end
        stats[1] = 0
        size = newSize
        (0...size).each do |index|
            if newByteArray[index] != oldByteArray[index]
                return false
            end
            stats[1] += 1
        end
        return true
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ByteUtil
    @@instance = ByteUtil.new()
end

