# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
require "org/allbinary/thread/ThreadPool"

module ::Org; module Allbinary; module ThreadPackage

class MusicThreadPool < ThreadPool
    

    def self.getInstance()
        return THREAD_POOL
    end
    

    def initialize(poolName, numThreads, priority)
        super(poolName, numThreads, priority)
    end
    

    def runTask(task)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(task)).appendlong((((::Time.now.to_f * 1000).to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @threadPoolStrings.ADD_TASK)
        MusicThreadPool.superclass.java_super_method(:runTask, 1).bind(self).call(task)
    end
    java_overload :runTask, 1
    

    def startTask(task)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@threadPoolStrings.START_TASK).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(task)).appendlong((((::Time.now.to_f * 1000).to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.RUN)
    end
    java_overload :startTask, 1
    

    def completedTask(task)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@threadPoolStrings.COMPLETE_TASK).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(task)).appendlong((((::Time.now.to_f * 1000).to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.RUN)
    end
    java_overload :completedTask, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:THREAD_POOL, ThreadPool.new("Music", 2, ThreadPool::NORMAL_PRIORITY))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MusicThreadPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:THREAD_POOL].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
require "java/lang/Runnable"
require "java/lang/System"

begin
    MusicThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

