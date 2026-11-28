# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.thread

require "java/lang/Object"

module ::Org; module Allbinary; module ThreadPackage

class ThreadObjectUtil
    attr_accessor :NULL_PRIORITY_RUNNABLE

    def jfields_org_allbinary_thread_ThreadObjectUtil
        @NULL_PRIORITY_RUNNABLE = NullPriorityRunnable.new()
    end

    def initialize
        jfields_org_allbinary_thread_ThreadObjectUtil
    end
    

    def self.getInstance()
        return @@instance
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
        ::Org::Allbinary::TsUtil.getInstance().waitFor(anyType, delay)
    end
    

    def processThread(runnable)
        thread = ::Java::Lang::JavaThread.new(runnable)
        thread.start()
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

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
autoload :NullPriorityRunnable, "org/allbinary/thread/NullPriorityRunnable" unless const_defined?(:NullPriorityRunnable, false)
autoload :PriorityRunnable, "org/allbinary/thread/PriorityRunnable" unless const_defined?(:PriorityRunnable, false)
require "java/lang/Runnable"
require "java/lang/Thread"

begin
    ThreadObjectUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

