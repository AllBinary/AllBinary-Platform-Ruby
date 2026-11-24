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

require "java/lang/Object"

module ::Org; module Allbinary; module ThreadPackage

class ThreadPool
    attr_accessor :logUtil, :commonStrings, :NULL_RUNNABLE, :threadPoolStrings, :threadObjectUtil, :isAlive, :taskQueue, :numThreads, :runningTask, :currentPriorityRunnable

    def jfields_org_allbinary_thread_ThreadPool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @NULL_RUNNABLE = NullRunnable.getInstance()
        @threadPoolStrings = ThreadPoolStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @isAlive = false unless instance_variable_defined?(:@isAlive)
        @taskQueue = ::Org::Allbinary::Util::BasicArrayListD.new()
        @numThreads = 0 unless instance_variable_defined?(:@numThreads)
        @runningTask = false unless instance_variable_defined?(:@runningTask)
        @currentPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
    end
    

    def initialize(poolName, numThreads, priority)
        jfields_org_allbinary_thread_ThreadPool
    end
    

    # throws Exception
    def runAPriorityTask()
        if !@currentPriorityRunnable.isDone()
            @currentPriorityRunnable.run()
        else
            runnable = self.getTask()
            if runnable == @NULL_RUNNABLE
                return
            end
            @currentPriorityRunnable = runnable
            if !@currentPriorityRunnable == @threadObjectUtil.NULL_PRIORITY_RUNNABLE
                @currentPriorityRunnable.reset()
                @currentPriorityRunnable.run()
            end
        end
    end
    

    # throws Exception
    def runATask()
        runnable = self.getTask()
        if runnable != nil
            runnable.run()
        end
    end
    

    def init()
        if !@isAlive
            @isAlive = true
            @taskQueue = ::Org::Allbinary::Util::BasicArrayListD.new()
        end
    end
    

    def runTaskWithPriority(task)
        java_monitor.synchronize do
        if !@isAlive
            self.init()
        end
        if task != nil
            size = @taskQueue.size()
            runnable = nil
            lowerPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
            (0...size).each do |index|
                runnable = @taskQueue.get(index)
                if runnable.getPriority() > task.getPriority()
                    lowerPriorityRunnable = runnable
                    break
                end
            end
            if lowerPriorityRunnable == @threadObjectUtil.NULL_PRIORITY_RUNNABLE
                @taskQueue.add(task)
            else
                index = @taskQueue.indexOf(lowerPriorityRunnable)
                @taskQueue.addAt(index, task)
            end
        end
        end
    end
    

    def runTask(task)
        java_monitor.synchronize do
        if !@isAlive
            self.init()
        end
        if task != nil
            @taskQueue.add(task)
        end
        end
    end
    

    # throws InterruptedException
    def getTask()
        java_monitor.synchronize do
        if @taskQueue.isEmpty()
            return @NULL_RUNNABLE
        end
        return @taskQueue.removeAt(0)
        end
    end
    

    def clear()
        java_monitor.synchronize do
        @taskQueue.clear()
        end
    end
    

    def close()
        java_monitor.synchronize do
        if @isAlive
            @isAlive = false
            @taskQueue.clear()
            @currentPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
        end
        end
    end
    

    def join()
        @isAlive = false
        @taskQueue.clear()
        @currentPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
    end
    

    def isBusy()
        if !@isAlive
            return false
        end
        if @taskQueue.size() > 0
            return true
        end
        if @runningTask
            return true
        end
        return false
    end
    

    def threadStarted()
    end
    

    def threadStopped()
        if @numThreads == 1
            @isAlive = false
            @taskQueue.clear()
            @currentPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
        end
    end
    

    def startTask(task)
    end
    

    def completedTask(task)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NORMAL_PRIORITY, 5)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NORMAL_PRIORITY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :NullRunnable, "org/allbinary/thread/NullRunnable" unless const_defined?(:NullRunnable, false)
autoload :PriorityRunnable, "org/allbinary/thread/PriorityRunnable" unless const_defined?(:PriorityRunnable, false)
autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false)
autoload :ThreadPoolStrings, "org/allbinary/thread/ThreadPoolStrings" unless const_defined?(:ThreadPoolStrings, false)
require "java/lang/Runnable"
require "java/lang/InterruptedException"

begin
    ThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

