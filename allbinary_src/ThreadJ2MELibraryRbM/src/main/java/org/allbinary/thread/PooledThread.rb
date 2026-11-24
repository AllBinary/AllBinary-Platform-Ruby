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

require "java/lang/JavaOverload"
require "java/lang/Thread"

module ::Org; module Allbinary; module ThreadPackage

class PooledThread < ::Java::Lang::JavaThread
    attr_accessor :logUtil, :commonStrings, :threadObjectUtil, :threadPool, :INTERRUPT_EXCEPTION

    def jfields_org_allbinary_thread_PooledThread
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
        @threadPool = nil unless instance_variable_defined?(:@threadPool)
        @INTERRUPT_EXCEPTION = "Exit InterruptedException"
    end
    

    def initialize(threadPool)
        super(threadPool.createName())
        jfields_org_allbinary_thread_PooledThread
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
            rescue ::Java::Lang::InterruptedException => ex
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
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
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(task2)).to_s, self, @commonStrings.RUN, e)
            end
        end
        @threadPool.threadStopped()
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false)
autoload :ThreadPool, "org/allbinary/thread/ThreadPool" unless const_defined?(:ThreadPool, false)
require "java/lang/Runnable"
require "java/lang/InterruptedException"

end; end; end

