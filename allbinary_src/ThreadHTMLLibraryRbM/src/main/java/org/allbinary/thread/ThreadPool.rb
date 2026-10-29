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
    attr_accessor :logUtil, :commonStrings, :NULL_RUNNABLE, :threadPoolStrings, :threadObjectUtil, :isAlive, :taskQueue, :numThreads, :runningTask, :currentPriorityRunnable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @NULL_RUNNABLE = NullRunnable.getInstance()
        @threadPoolStrings = ThreadPoolStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @isAlive = false
        @taskQueue = BasicArrayListD.new()
        @numThreads = 0
        @runningTask = false
        @currentPriorityRunnable = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
    end
    

    def initialize(poolName, numThreads, priority)
        initialize_fields
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
            if !(@currentPriorityRunnable == @threadObjectUtil.NULL_PRIORITY_RUNNABLE)
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
            @taskQueue = BasicArrayListD.new()
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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/thread/NullRunnable"
require "org/allbinary/thread/PriorityRunnable"
require "org/allbinary/thread/ThreadObjectUtil"
require "org/allbinary/thread/ThreadPoolStrings"
require "java/lang/Runnable"
require "java/lang/InterruptedException"

class ThreadPool
    NORMAL_PRIORITY = 5
end

