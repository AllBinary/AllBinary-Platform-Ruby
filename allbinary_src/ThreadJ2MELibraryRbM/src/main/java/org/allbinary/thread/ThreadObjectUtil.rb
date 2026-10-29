# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.thread

require "java/lang/Object"

class ThreadObjectUtil
    attr_accessor :NULL_PRIORITY_RUNNABLE

    def initialize_fields
        @NULL_PRIORITY_RUNNABLE = NullPriorityRunnable.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadObjectUtil.instance
    end
    

    def notifyObject(anyType)
        anyType.notify()
    end
    

    # throws Exception
    def waitObject(anyType)
        anyType.wait()
    end
    

    # throws Exception
    def waitObjectFor(anyType, delay)
        TsUtil.getInstance().waitFor(anyType, delay)
    end
    

    def processThread(runnable)
        thread = JavaThread.new(runnable)
        thread.start()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/thread/NullPriorityRunnable"
require "org/allbinary/thread/PriorityRunnable"
require "java/lang/Runnable"
require "java/lang/Thread"

class ThreadObjectUtil
    @@instance = ThreadObjectUtil.new()
end

