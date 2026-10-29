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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/thread/NullRunnable"
require "org/allbinary/thread/PooledThread"
require "org/allbinary/thread/PriorityRunnable"
require "org/allbinary/thread/ThreadObjectUtil"
require "org/allbinary/thread/ThreadPoolStrings"
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/InterruptedException"

class ThreadPool
    ROOT_NAME = "-PooledThread-"
    NORMAL_PRIORITY = JavaThread::NORM_PRIORITY
end

