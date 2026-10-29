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
# package org.allbinary.logic.communication.java.vm.stats


class JvmStatistics
    attr_accessor :runtime

    def initialize_fields
        @runtime = nil
    end
    

    def initialize()
        initialize_fields
        @runtime = Runtime.getRuntime()
    end
    

    def getFreeMemoryBytes()
        return @runtime.freeMemory()
    end
    

    def getFreeMemoryKilobytes()
        return self.getFreeMemoryBytes() / 1024
    end
    

    def getFreeMemoryMegabytes()
        return self.getFreeMemoryKilobytes() / 1024
    end
    

    def getMaxMemoryBytes()
        return @runtime.maxMemory()
    end
    

    def getMaxMemoryKilobytes()
        return self.getMaxMemoryBytes() / 1024
    end
    

    def getMaxMemoryMegabytes()
        return self.getMaxMemoryKilobytes() / 1024
    end
    

    def getTotalMemoryBytes()
        return @runtime.totalMemory()
    end
    

    def getTotalMemoryKilobytes()
        return self.getTotalMemoryBytes() / 1024
    end
    

    def getTotalMemoryMegabytes()
        return self.getTotalMemoryKilobytes() / 1024
    end
    

    def getFreeMemoryBytesLong()
        return self.getFreeMemoryBytes()
    end
    

    def getFreeMemoryKilobytesLong()
        return self.getFreeMemoryKilobytes()
    end
    

    def getFreeMemoryMegabytesLong()
        return self.getFreeMemoryMegabytes()
    end
    

    def getMaxMemoryBytesLong()
        return self.getMaxMemoryBytes()
    end
    

    def getMaxMemoryKilobytesLong()
        return self.getMaxMemoryKilobytes()
    end
    

    def getMaxMemoryMegabytesLong()
        return self.getMaxMemoryMegabytes()
    end
    

    def getTotalMemoryBytesLong()
        return self.getTotalMemoryBytes()
    end
    

    def getTotalMemoryKilobytesLong()
        return self.getTotalMemoryKilobytes()
    end
    

    def getTotalMemoryMegabytesLong()
        return self.getTotalMemoryMegabytes()
    end
    

    def getFreeMemoryBytesString()
        return self.getFreeMemoryBytesLong().to_s
    end
    

    def getFreeMemoryKilobytesString()
        return self.getFreeMemoryKilobytesLong().to_s
    end
    

    def getFreeMemoryMegabytesString()
        return self.getFreeMemoryMegabytesLong().to_s
    end
    

    def getMaxMemoryBytesString()
        return self.getMaxMemoryBytesLong().to_s
    end
    

    def getMaxMemoryKilobytesString()
        return self.getMaxMemoryKilobytesLong().to_s
    end
    

    def getMaxMemoryMegabytesString()
        return self.getMaxMemoryMegabytesLong().to_s
    end
    

    def getTotalMemoryBytesString()
        return self.getTotalMemoryBytesLong().to_s
    end
    

    def getTotalMemoryKilobytesString()
        return self.getTotalMemoryKilobytesLong().to_s
    end
    

    def getTotalMemoryMegabytesString()
        return self.getTotalMemoryMegabytesLong().to_s
    end
    

    def getNumberOfThreads()
        return JavaThread.activeCount()
    end
    

    def getNumberOfThreadsLong()
        return self.getNumberOfThreads()
    end
    

    def getNumberOfThreadsString()
        return self.getNumberOfThreadsLong().to_s
    end
    

    def collectGarbage()
        @runtime.gc()
    end
end

require "java/lang/Thread"

