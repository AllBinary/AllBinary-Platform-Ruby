# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.thread


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
    end
    

    # throws Exception
    def waitObject(anyType)
    end
    

    # throws Exception
    def waitObjectFor(anyType, delay)
    end
    

    def processThread(runnable)
        runnable.run()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/thread/NullPriorityRunnable"
require "org/allbinary/thread/PriorityRunnable"
require "java/lang/Runnable"

class ThreadObjectUtil
    @@instance = ThreadObjectUtil.new()
end

