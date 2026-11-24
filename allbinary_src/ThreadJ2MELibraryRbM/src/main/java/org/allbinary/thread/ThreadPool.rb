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
    attr_accessor :logUtil, :commonStrings, :NULL_RUNNABLE, :threadPoolStrings, :threadObjectUtil, :poolName, :priority, :isAlive, :taskQueue, :threadID, :numThreads, :runningTask

    def jfields_org_allbinary_thread_ThreadPool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @NULL_RUNNABLE = NullRunnable.getInstance()
        @threadPoolStrings = ThreadPoolStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @poolName = nil unless instance_variable_defined?(:@poolName)
        @priority = nil unless instance_variable_defined?(:@priority)
        @isAlive = false
        @taskQueue = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @threadID = 0 unless instance_variable_defined?(:@threadID)
        @numThreads = nil unless instance_variable_defined?(:@numThreads)
        @runningTask = false unless instance_variable_defined?(:@runningTask)
    end
    

    def initialize(poolName, numThreads, priority)
        jfields_org_allbinary_thread_ThreadPool
        @poolName = poolName
        @priority = priority
        @numThreads = numThreads
    end
    

    def init()
        if !@isAlive
            @isAlive = true
            @taskQueue = ::Org::Allbinary::Util::BasicArrayListD.new()
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
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@poolName).append(ThreadPool::ROOT_NAME).appendint(((@threadID += 1) - 1)).to_s
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ROOT_NAME, "-PooledThread-")
        begin
            const_set(:NORMAL_PRIORITY, ::Java::Lang::JavaThread::NORM_PRIORITY)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :NullRunnable, "org/allbinary/thread/NullRunnable" unless const_defined?(:NullRunnable, false)
autoload :PooledThread, "org/allbinary/thread/PooledThread" unless const_defined?(:PooledThread, false)
autoload :PriorityRunnable, "org/allbinary/thread/PriorityRunnable" unless const_defined?(:PriorityRunnable, false)
autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false)
autoload :ThreadPoolStrings, "org/allbinary/thread/ThreadPoolStrings" unless const_defined?(:ThreadPoolStrings, false)
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/InterruptedException"

begin
    ThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

