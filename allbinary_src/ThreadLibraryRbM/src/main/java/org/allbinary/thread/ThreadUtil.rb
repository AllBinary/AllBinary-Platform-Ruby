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
# package org.allbinary.thread


class ThreadUtil
    attr_accessor :logUtil, :JOIN

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @JOIN = "join"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadUtil.instance
    end
    

    def isRunning(thread)
        if thread != nil && thread.isAlive()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def join(thread)
        if ThreadUtil.getInstance().isRunning(thread)
            @logUtil.putF("Waiting for Thread To Join/End", self, @JOIN)
            thread.join()
        end
    end

    def self.instance()
        ThreadUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThreadUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThreadUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
require "java/lang/Thread"

begin
    ThreadUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

