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

class PrimaryThreadPool < ThreadPool
    

    def self.getInstance()
        return PrimaryThreadPool::THREAD_POOL
    end
    

    def initialize(poolName, numThreads, priority)
        super(poolName, numThreads, priority)
    end
    

    def runTask(task)
        @logUtil.putF(StringMaker.new().append(StringUtil.getInstance().toString(task)).appendlong(((Time.now.to_f * 1000).to_i).to_i).to_s, self, @threadPoolStrings.ADD_TASK)
        super(task)
    end
    

    def startTask(task)
        @logUtil.putF(StringMaker.new().append(@threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).to_s, self, @commonStrings.RUN)
    end
    

    def completedTask(task)
        @logUtil.putF(StringMaker.new().append(@threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).to_s, self, @commonStrings.RUN)
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "java/lang/Runnable"
require "java/lang/System"

class PrimaryThreadPool
    THREAD_POOL = ThreadPool.new("Primary", 1, ThreadPool::NORMAL_PRIORITY)
end

