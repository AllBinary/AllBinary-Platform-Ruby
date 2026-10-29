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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/DemoCanvas"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/ABRunnable"
require "org/allbinary/thread/PrimaryThreadPool"
require "org/allbinary/thread/ThreadPool"
require "java/lang/Runnable"
require "java/lang/Thread"

class ThreadFactoryUtil
    @@instance = ThreadFactoryUtil.new()
end

