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
        ThreadObjectUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThreadObjectUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThreadObjectUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadObjectUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullPriorityRunnable, "org/allbinary/thread/NullPriorityRunnable"
autoload :PriorityRunnable, "org/allbinary/thread/PriorityRunnable"
require "java/lang/Runnable"

begin
    ThreadObjectUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

