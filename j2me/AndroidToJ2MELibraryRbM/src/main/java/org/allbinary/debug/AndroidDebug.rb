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

require "java/lang/JavaOverload"
require "org/allbinary/debug/DebugInterface"

module ::Org; module Allbinary; module Debug

class AndroidDebug
    include DebugInterface
    attr_accessor :startTime, :running, :bufferSize

    def jfields_org_allbinary_debug_AndroidDebug
        @startTime = 9223372036854775807
        @running = false
        @bufferSize = 32 * 1024 * 1024
    end

    def initialize
        jfields_org_allbinary_debug_AndroidDebug
    end
    

    def start()
        self.setStartTime((::Time.now.to_f * 1000).to_i)
        ::Android::Os::Debug.startMethodTracing("trace", @bufferSize)
        self.setRunning(true)
    end
    java_overload :start, 0
    

    def stop()
        @startTime = 9223372036854775807
        ::Android::Os::Debug.stopMethodTracing()
        self.setRunning(false)
    end
    java_overload :stop, 0
    

    def getMaxTime()
        return 120000
    end
    java_overload :getMaxTime, 0
    

    def setStartTime(startTime)
        @startTime = startTime
    end
    java_overload :setStartTime, 1
    

    def getStartTime()
        return @startTime
    end
    java_overload :getStartTime, 0
    

    def setRunning(running)
        @running = running
    end
    java_overload :setRunning, 1
    

    def isRunning()
        return @running
    end
    java_overload :isRunning, 0
end

module ::Android; module Os; autoload :Debug, "android/os/Debug" unless const_defined?(:Debug, false); end; end
require "java/lang/System"

end; end; end

