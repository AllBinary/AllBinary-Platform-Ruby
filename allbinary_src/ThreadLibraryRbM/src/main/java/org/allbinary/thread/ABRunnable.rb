# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.thread

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module ThreadPackage

class ABRunnable
    include RunnableInterface
    attr_accessor :running

    def jfields_org_allbinary_thread_ABRunnable
        @running = false
    end

    def initialize
        jfields_org_allbinary_thread_ABRunnable
    end
    

    def setThread(thread)
    end
    java_overload :setThread, 1
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    java_overload :isRunning, 0
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    java_overload :setRunning, 1
    

    def run()
    end
    java_overload :run, 0
    

    def getType()
        return -1
    end
    java_overload :getType, 0
end

require "java/lang/Thread"

end; end; end

