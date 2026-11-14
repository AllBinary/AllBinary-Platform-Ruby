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


class ThreadFactoryUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadFactoryUtil.instance
    end
    

    def getInstanceGameCanvasRunnable(runnable)
        return self.getInstanceType(runnable, runnable.getType())
    end
    

    def getInstanceForRunnable(runnable)
        return self.getInstanceType(runnable, runnable.getType())
    end
    

    def getInstanceType(runnable, type)
        commonStrings = CommonStrings.getInstance()
        if J2MEUtil.isHTML()
            if type == DemoCanvas::TYPE || type == AllBinaryGameCanvas::TYPE
                demoGameSingleThreadStartRunnable = RunnableCanvasSingleThreadStartRunnable.new(runnable)
                PreLogUtil.put(StringMaker.new().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).to_s, self, commonStrings.CONSTRUCTOR)
                primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable)
            else
                PreLogUtil.put(StringMaker.new().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).to_s, self, commonStrings.CONSTRUCTOR)
                primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(runnable)
            end
        end
        thread = JavaThread.new(runnable, runnable.to_s)
        @logUtil.putF(thread.to_s, self, commonStrings.CONSTRUCTOR)
        return thread
    end
    

    def start(thread)
        thread.start()
    end

    def self.instance()
        ThreadFactoryUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThreadFactoryUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThreadFactoryUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadFactoryUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :RunnableCanvas, "org/allbinary/canvas/RunnableCanvas"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas"
autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
autoload :RunnableCanvasSingleThreadStartRunnable, "org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABRunnable, "org/allbinary/thread/ABRunnable"
autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool"
autoload :ThreadPool, "org/allbinary/thread/ThreadPool"
require "java/lang/Runnable"
require "java/lang/Thread"

begin
    ThreadFactoryUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

