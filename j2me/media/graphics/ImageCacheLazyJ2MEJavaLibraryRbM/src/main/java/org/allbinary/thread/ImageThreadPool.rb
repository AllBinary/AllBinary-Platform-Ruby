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
require "java/lang/JavaOverload"
require "org/allbinary/thread/ThreadPool"

module ::Org; module Allbinary; module ThreadPackage

#This is mainly for network communications.
class ImageThreadPool < ThreadPool
    attr_accessor :logUtil

    def jfields_org_allbinary_thread_ImageThreadPool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize(poolName, numThreads, priority)
        super(poolName, numThreads, priority)
        jfields_org_allbinary_thread_ImageThreadPool
    end
    

    def runTask(task)
        java_monitor.synchronize do
        ImageThreadPool.superclass.java_super_method(:runTask, 1).bind(self).call(task)
        end
    end
    java_overload :runTask, 1
    

    def startTask(task)
    end
    java_overload :startTask, 1
    

    def completedTask(task)
    end
    java_overload :completedTask, 1

    def self.instance()
        ImageThreadPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageThreadPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageThreadPool.new("ImageLoader", 1, ThreadPool::NORMAL_PRIORITY)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageThreadPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
require "java/lang/Runnable"

begin
    ImageThreadPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

