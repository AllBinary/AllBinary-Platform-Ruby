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
# package org.allbinary.debug

require "org/allbinary/debug/DebugInterface"

class AndroidDebug
    include DebugInterface
    attr_accessor :startTime, :running, :bufferSize

    def initialize_fields
        @startTime = 9223372036854775807
        @running = false
        @bufferSize = 32 * 1024 * 1024
    end

    def initialize
        initialize_fields
    end
    

    def start()
        self.setStartTime((Time.now.to_f * 1000).to_i)
        Debug.startMethodTracing("trace", @bufferSize)
        self.setRunning(true)
    end
    

    def stop()
        @startTime = 9223372036854775807
        Debug.stopMethodTracing()
        self.setRunning(false)
    end
    

    def getMaxTime()
        return 120000
    end
    

    def setStartTime(startTime)
        @startTime = startTime
    end
    

    def getStartTime()
        return @startTime
    end
    

    def setRunning(running)
        @running = running
    end
    

    def isRunning()
        return @running
    end
end

require "android/os/Debug"
require "java/lang/System"

