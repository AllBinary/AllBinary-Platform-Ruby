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

require "org/allbinary/thread/ThreadPool"

#This is mainly for network communications.
class SecondaryThreadPool < ThreadPool
    

    def self.getInstance()
        return SecondaryThreadPool.instance
    end
    

    def initialize(poolName, numThreads, priority)
        super(poolName, numThreads, priority)
    end
    

    def runTask(task)
        @logUtil.putF(StringMaker.new().append(StringUtil.getInstance().toString(task)).appendlong(((Time.now.to_f * 1000).to_i).to_i).to_s, self, @threadPoolStrings.ADD_TASK)
        super(task)
    end
    

    def startTask(task)
        @logUtil.putF(StringMaker.new().append(@threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).appendlong(((Time.now.to_f * 1000).to_i).to_i).to_s, self, @commonStrings.RUN)
    end
    

    def completedTask(task)
        @logUtil.putF(StringMaker.new().append(@threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).appendlong(((Time.now.to_f * 1000).to_i).to_i).to_s, self, @commonStrings.RUN)
    end

    def self.instance()
        SecondaryThreadPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SecondaryThreadPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SecondaryThreadPool.new("Secondary", 1, ThreadPool::NORMAL_PRIORITY)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SecondaryThreadPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
require "java/lang/Runnable"
require "java/lang/System"

begin
    SecondaryThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

