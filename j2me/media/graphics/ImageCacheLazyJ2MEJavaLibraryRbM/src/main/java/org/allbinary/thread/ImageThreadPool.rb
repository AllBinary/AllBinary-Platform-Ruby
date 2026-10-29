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
require "org/allbinary/thread/ThreadPool"

#This is mainly for network communications.
class ImageThreadPool < ThreadPool
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageThreadPool.instance
    end
    

    def initialize(poolName, numThreads, priority)
        super(poolName, numThreads, priority)
        initialize_fields
    end
    

    def runTask(task)
        java_monitor.synchronize do
        super(task)
        end
    end
    

    def startTask(task)
    end
    

    def completedTask(task)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/log/LogUtil"
require "java/lang/Runnable"

class ImageThreadPool
    @@instance = ImageThreadPool.new("ImageLoader", 1, ThreadPool::NORMAL_PRIORITY)
end

