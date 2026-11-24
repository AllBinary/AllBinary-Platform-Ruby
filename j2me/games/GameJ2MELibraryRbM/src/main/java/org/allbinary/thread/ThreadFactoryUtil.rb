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


module ::Org; module Allbinary; module ThreadPackage

class ThreadFactoryUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_thread_ThreadFactoryUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_thread_ThreadFactoryUtil
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
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        if ::Org::Allbinary::J2MEUtil.isHTML()
            if type == ::Org::Allbinary::Game::Displayable::Canvas::DemoCanvas::TYPE || type == ::Org::Allbinary::Game::Displayable::Canvas::AllBinaryGameCanvas::TYPE
                demoGameSingleThreadStartRunnable = ::Org::Allbinary::Game::Displayable::Canvas::RunnableCanvasSingleThreadStartRunnable.new(runnable)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(runnable)).to_s, self, commonStrings.CONSTRUCTOR)
                primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable)
            else
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(runnable)).to_s, self, commonStrings.CONSTRUCTOR)
                primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(runnable)
            end
        end
        thread = ::Java::Lang::JavaThread.new(runnable, runnable.to_s)
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

module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Canvas; autoload :RunnableCanvas, "org/allbinary/canvas/RunnableCanvas" unless const_defined?(:RunnableCanvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas" unless const_defined?(:DemoCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" unless const_defined?(:GameCanvasRunnableInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :RunnableCanvasSingleThreadStartRunnable, "org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable" unless const_defined?(:RunnableCanvasSingleThreadStartRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ABRunnable, "org/allbinary/thread/ABRunnable" unless const_defined?(:ABRunnable, false)
autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool" unless const_defined?(:PrimaryThreadPool, false)
autoload :ThreadPool, "org/allbinary/thread/ThreadPool" unless const_defined?(:ThreadPool, false)
require "java/lang/Runnable"
require "java/lang/Thread"

begin
    ThreadFactoryUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

