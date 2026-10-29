# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

require "java/lang/Thread"

class PooledThread < JavaThread
    attr_accessor :logUtil, :commonStrings, :threadObjectUtil, :threadPool, :INTERRUPT_EXCEPTION

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @threadPool = nil
        @INTERRUPT_EXCEPTION = "Exit InterruptedException"
    end
    

    def initialize(threadPool)
        super(threadPool.createName())
        initialize_fields
        @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        @threadPool = threadPool
    end
    

    def run()
        @threadPool.threadStarted()
        while true
            task2 = @threadObjectUtil.NULL_PRIORITY_RUNNABLE
            begin
                task2 = @threadPool.getTask()
                @threadPool.runningTask = true
                @threadPool.startTask(task2)
            rescue InterruptedException => ex
                logUtil = LogUtil.getInstance()
                logUtil.putF(@INTERRUPT_EXCEPTION, self, @commonStrings.RUN)
                break
            end
            if task2 == @threadObjectUtil.NULL_PRIORITY_RUNNABLE
                break
            end
            begin
                task2.run()
                @threadPool.completedTask(task2)
                @threadPool.runningTask = false
            rescue StandardError => e
                logUtil = LogUtil.getInstance()
                logUtil.put(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString(task2)).to_s, self, @commonStrings.RUN, e)
            end
        end
        @threadPool.threadStopped()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/ThreadObjectUtil"
require "org/allbinary/thread/ThreadPool"
require "java/lang/Runnable"
require "java/lang/InterruptedException"

