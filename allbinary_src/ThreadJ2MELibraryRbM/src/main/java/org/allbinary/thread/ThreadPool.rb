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

class ThreadPool
    attr_accessor :logUtil, :commonStrings, :NULL_RUNNABLE, :threadPoolStrings, :threadObjectUtil, :poolName, :priority, :isAlive, :taskQueue, :threadID, :numThreads, :runningTask

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @NULL_RUNNABLE = NullRunnable.getInstance()
        @threadPoolStrings = ThreadPoolStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @poolName = nil
        @priority = nil
        @isAlive = false
        @taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance()
        @threadID = 0
        @numThreads = nil
        @runningTask = false
    end
    

    def initialize(poolName, numThreads, priority)
        initialize_fields
        @poolName = poolName
        @priority = priority
        @numThreads = numThreads
    end
    

    def init()
        if !@isAlive
            @isAlive = true
            @taskQueue = BasicArrayListD.new()
            pooledThread = nil
            (0...@numThreads).each do |i|
                pooledThread = PooledThread.new(self)
                pooledThread.setPriority(@priority)
                pooledThread.start()
            end
        end
    end
    

    # throws Exception
    def runAPriorityTask()
        raise RuntimeError.new()
    end
    

    def runTaskWithPriority(task)
        (self).java_monitor.synchronize do
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
                self.notify()
            end
        end
    end
    

    def runTask(task)
        (self).java_monitor.synchronize do
            if !@isAlive
                self.init()
            end
            if task != nil
                @taskQueue.add(task)
                self.notify()
            end
        end
    end
    

    # throws InterruptedException
    def getTask()
        (self).java_monitor.synchronize do
            while @taskQueue.size() == 0
                if !@isAlive
                    return @NULL_RUNNABLE
                end
                self.wait()
            end
            runnable = @taskQueue.removeAt(0)
            return runnable
        end
    end
    

    def clear()
        (self).java_monitor.synchronize do
            if @isAlive
                @taskQueue.clear()
            end
        end
    end
    

    def close()
        (self).java_monitor.synchronize do
            if @isAlive
                @isAlive = false
                @taskQueue.clear()
            end
        end
    end
    

    def join()
        (self).java_monitor.synchronize do
            @isAlive = false
            @taskQueue.clear()
            self.notifyAll()
        end
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
        end
    end
    

    def startTask(task)
    end
    

    def completedTask(task)
    end
    

    def createName()
        return StringMaker.new().append(@poolName).append(ThreadPool::ROOT_NAME).appendint(((@threadID += 1) - 1)).to_s
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ROOT_NAME, "-PooledThread-")
        begin
            const_set(:NORMAL_PRIORITY, JavaThread::NORM_PRIORITY)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ROOT_NAME, :NORMAL_PRIORITY].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :NullRunnable, "org/allbinary/thread/NullRunnable"
autoload :PooledThread, "org/allbinary/thread/PooledThread"
autoload :PriorityRunnable, "org/allbinary/thread/PriorityRunnable"
autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil"
autoload :ThreadPoolStrings, "org/allbinary/thread/ThreadPoolStrings"
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/InterruptedException"

begin
    ThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

