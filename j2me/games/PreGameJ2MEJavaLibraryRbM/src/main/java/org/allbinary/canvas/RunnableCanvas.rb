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
# package org.allbinary.canvas

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module Canvas

class RunnableCanvas < ::Org::Allbinary::Graphics::Displayable::MyCanvas
    include ::Org::Allbinary::ThreadPackage::RunnableInterface
    attr_accessor :nullUtil, :stdUtil, :systemWrapper, :tsUtil, :thread, :currentThread, :running, :loopTimeHelper, :runnableCanvasRefreshHelper, :commonLabels, :threadObjectUtil, :SET_RUNNING, :IS_RUNNING, :THREAD, :NOT_EQUAL, :PAUSE_SLEEP, :START_PAUSE, :END_PAUSE, :PROCESS_LOOP_SLEEP, :pauseWait, :notified

    def jfields_org_allbinary_canvas_RunnableCanvas
        @nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        @stdUtil = ::Org::Allbinary::Logic::StdUtil.getInstance()
        @systemWrapper = ::Org::Allbinary::Logic::ABSystemWrapper.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @thread = ::Org::Allbinary::ThreadPackage::NullThread::NULL_THREAD
        @currentThread = ::Org::Allbinary::ThreadPackage::NullThread::NULL_THREAD
        @running = false unless instance_variable_defined?(:@running)
        @loopTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance().WAIT)
        @runnableCanvasRefreshHelper = Processor.getInstance()
        @commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        @threadObjectUtil = ::Org::Allbinary::ThreadPackage::ThreadObjectUtil.getInstance()
        @SET_RUNNING = "setRunning"
        @IS_RUNNING = "isRunning"
        @THREAD = "Thread: "
        @NOT_EQUAL = " != "
        @PAUSE_SLEEP = "pause sleep"
        @START_PAUSE = "start pause - game thread sleep at: "
        @END_PAUSE = "end pause - game thread sleep at: "
        @PROCESS_LOOP_SLEEP = "processLoopSleep"
        @pauseWait = 0
        @notified = false
    end
    

    def initialize(commandListener, childNameList, hasParam)
        super(::Org::Allbinary::StringPackage::CommonStrings.getInstance().UNKNOWN, childNameList)
        jfields_org_allbinary_canvas_RunnableCanvas
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("RunnableCanvas delay: ").appendint(((@loopTimeHelper.delay).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.CONSTRUCTOR)
        @runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper.new(self)
        if commandListener != nil
            self.initCommands(commandListener)
        elsif hasParam
            @logUtil.putF("commandListener was null", self, "initCommands")
        end
    end
    

    def initCommands(cmdListener)
        @logUtil.putF(@commonStrings.NOT_IMPLEMENTED, self, "initCommands")
    end
    java_overload :initCommands, 1
    

    def isMainCanvas()
        if self.getCustomCommandListener() != nil
            return true
        else
            return false
        end
    end
    java_overload :isMainCanvas, 0
    

    def setThread(thread)
        @thread = thread
    end
    java_overload :setThread, 1
    

    def setRunning(running)
        @running = running
        if !@running
            @thread = ::Org::Allbinary::ThreadPackage::NullThread::NULL_THREAD
            (self).java_monitor.synchronize do
                @threadObjectUtil.notifyObject(self)
            end
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@IS_RUNNING).appendboolean(@running).to_s, self, @SET_RUNNING)
    end
    java_overload :setRunning, 1
    

    def isRunning()
        java_monitor.synchronize do
        if @thread == @currentThread
            return @running
        else
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@THREAD)
            if @thread != nil
                stringBuffer.append(@thread.to_s)
            end
            stringBuffer.append(@NOT_EQUAL)
            if @currentThread != nil
                stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@currentThread))
            end
            @logUtil.putF(stringBuffer.to_s, self, @IS_RUNNING)
            return false
        end
        end
    end
    java_overload :isRunning, 0
    

    def getLoopTimeHelperP()
        return @loopTimeHelper
    end
    java_overload :getLoopTimeHelperP, 0
    

    def setWait(wait)
        @loopTimeHelper.delay = wait
        @pauseWait = wait * 3
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("setWait - delay: ").appendint(((@loopTimeHelper.delay).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    java_overload :setWait, 1
    

    def getWait()
        return @loopTimeHelper.delay
    end
    java_overload :getWait, 0
    

    def setCurrentThread()
        @currentThread = ::Java::Lang::JavaThread.currentThread()
    end
    java_overload :setCurrentThread, 0
    

    def setCurrentThreadFake()
        @currentThread = @thread
    end
    java_overload :setCurrentThreadFake, 0
    

    def showNotify()
        begin
            self.stopWaiting()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "showNotify", e)
        end
    end
    java_overload :showNotify, 0
    

    # throws Exception
    def stopWaiting()
        @notified = true
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
        self.repaint()
    end
    java_overload :stopWaiting, 0
    

    # throws Exception
    def waitOnNotify(wait)
        java_monitor.synchronize do
        if !@notified
            if wait > 0
                @threadObjectUtil.waitObjectFor(self, wait)
            else
                @threadObjectUtil.waitObject(self)
            end
        end
        end
    end
    java_overload :waitOnNotify, 1
    

    # throws Exception
    def processSleep()
        sleep((@pauseWait) / 1000.0)
    end
    java_overload :processSleep, 0
    

    def isPausable()
        return false
    end
    java_overload :isPausable, 0
    

    # throws Exception
    def processGameSleep(sleep)
        sleep((sleep) / 1000.0)
    end
    java_overload :processGameSleep, 1
    

    # throws Exception
    def processLoopSleep()
        @runnableCanvasRefreshHelper.process()
        if self.isPaused()
            stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if self.isRunning() && !self.isSingleThread()
                stringMaker.delete(0, stringMaker.length())
                currentTimeMillis = @systemWrapper.currentTimeMillis()
                @logUtil.putF(stringMaker.append(@START_PAUSE).appendlong(currentTimeMillis).append(@PAUSE_SLEEP).appendlong(@pauseWait).to_s, self, @PROCESS_LOOP_SLEEP)
                while self.isPaused() && self.isRunning() && !self.isSingleThread()
                    self.processSleep()
                    if !self.isPausable()
                        stringMaker.delete(0, stringMaker.length())
                        @logUtil.putF(stringMaker.append(@END_PAUSE).appendlong(currentTimeMillis).to_s, self, @PROCESS_LOOP_SLEEP)
                        return
                    end
                end
            end
        end
        elapsedTime = @loopTimeHelper.getElapsedTNT()
        wait = ((@loopTimeHelper.delay).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        if elapsedTime > wait
            elapsedTime = wait
        else
            self.processGameSleep(wait - elapsedTime)
        end
    end
    java_overload :processLoopSleep, 0
    

    def isSingleThread()
        return false
    end
    java_overload :isSingleThread, 0
    

    def run()
        self.setCurrentThread()
    end
    java_overload :run, 0
    

    # throws Exception
    def end2()
    end
    java_overload :end2, 0
    

    def getType()
        return -1
    end
    java_overload :getType, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable" unless const_defined?(:NullWaitGameRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullThread, "org/allbinary/thread/NullThread" unless const_defined?(:NullThread, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false)
autoload :RunnableCanvasRefreshHelper, "org/allbinary/canvas/RunnableCanvasRefreshHelper" unless const_defined?(:RunnableCanvasRefreshHelper, false)
require "java/lang/Thread"

end; end; end

