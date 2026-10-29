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
# require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/thread/RunnableInterface"

class RunnableCanvas < MyCanvas
    include RunnableInterface
    attr_accessor :nullUtil, :stdUtil, :systemWrapper, :tsUtil, :thread, :currentThread, :running, :loopTimeHelper, :runnableCanvasRefreshHelper, :commonLabels, :threadObjectUtil, :SET_RUNNING, :IS_RUNNING, :THREAD, :NOT_EQUAL, :PAUSE_SLEEP, :START_PAUSE, :END_PAUSE, :PROCESS_LOOP_SLEEP, :pauseWait, :notified

    def initialize_fields
        @nullUtil = NullUtil.getInstance()
        @stdUtil = StdUtil.getInstance()
        @systemWrapper = ABSystemWrapper.getInstance()
        @tsUtil = TsUtil.getInstance()
        @thread = NullThread::NULL_THREAD
        @currentThread = NullThread::NULL_THREAD
        @running = false
        @loopTimeHelper = TimeDelayHelper.new(NullWaitGameRunnable.getInstance().WAIT)
        @runnableCanvasRefreshHelper = Processor.getInstance()
        @commonLabels = CommonLabels.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
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
        super(CommonStrings.getInstance().UNKNOWN, childNameList)
        initialize_fields
        @logUtil.putF(StringMaker.new().append("RunnableCanvas delay: ").appendint((@loopTimeHelper.delay).to_i).to_s, self, @commonStrings.CONSTRUCTOR)
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
    

    def isMainCanvas()
        if self.getCustomCommandListener() != nil
            return true
        else
            return false
        end
    end
    

    def setThread(thread)
        @thread = thread
    end
    

    def setRunning(running)
        @running = running
        if !@running
            @thread = NullThread::NULL_THREAD
            (self).java_monitor.synchronize do
                @threadObjectUtil.notifyObject(self)
            end
        end
        @logUtil.putF(StringMaker.new().append(@IS_RUNNING).appendboolean(@running).to_s, self, @SET_RUNNING)
    end
    

    def isRunning()
        java_monitor.synchronize do
        if @thread == @currentThread
            return @running
        else
            stringBuffer = StringMaker.new()
            stringBuffer.append(@THREAD)
            if @thread != nil
                stringBuffer.append(@thread.to_s)
            end
            stringBuffer.append(@NOT_EQUAL)
            if @currentThread != nil
                stringBuffer.append(StringUtil.getInstance().toString(@currentThread))
            end
            @logUtil.putF(stringBuffer.to_s, self, @IS_RUNNING)
            return false
        end
        end
    end
    

    def getLoopTimeHelperP()
        return @loopTimeHelper
    end
    

    def setWait(wait)
        @loopTimeHelper.delay = wait
        @pauseWait = wait * 3
        @logUtil.putF(StringMaker.new().append("setWait - delay: ").appendint((@loopTimeHelper.delay).to_i).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def getWait()
        return @loopTimeHelper.delay
    end
    

    def setCurrentThread()
        @currentThread = JavaThread.currentThread()
    end
    

    def setCurrentThreadFake()
        @currentThread = @thread
    end
    

    def showNotify()
        begin
            self.stopWaiting()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "showNotify", e)
        end
    end
    

    # throws Exception
    def stopWaiting()
        @notified = true
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
        self.repaint()
    end
    

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
    

    # throws Exception
    def processSleep()
        sleep((@pauseWait) / 1000.0)
    end
    

    def isPausable()
        return false
    end
    

    # throws Exception
    def processGameSleep(sleep)
        sleep((sleep) / 1000.0)
    end
    

    # throws Exception
    def processLoopSleep()
        @runnableCanvasRefreshHelper.process()
        if self.isPaused()
            stringMaker = StringMaker.new()
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
        wait = (@loopTimeHelper.delay).to_i
        if elapsedTime > wait
            elapsedTime = wait
        else
            self.processGameSleep(wait - elapsedTime)
        end
    end
    

    def isSingleThread()
        return false
    end
    

    def run()
        self.setCurrentThread()
    end
    

    # throws Exception
    def end2()
    end
    

    def getType()
        return -1
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/NullThread"
require "org/allbinary/thread/ThreadObjectUtil"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/canvas/Processor"
require "org/allbinary/canvas/RunnableCanvasRefreshHelper"
require "java/lang/Thread"

