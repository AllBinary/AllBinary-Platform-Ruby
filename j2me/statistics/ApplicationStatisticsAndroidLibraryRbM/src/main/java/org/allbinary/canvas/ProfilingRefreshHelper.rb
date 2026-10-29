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

require "org/allbinary/canvas/AndroidGameStatistics"

class ProfilingRefreshHelper < AndroidGameStatistics
    attr_accessor :firstTime, :bestFrameProcessingTime, :worstFrameProcessingTime, :frameProcessingTimeElapsed

    def initialize_fields
        @firstTime = true
        @bestFrameProcessingTime = 0
        @worstFrameProcessingTime = 0
        @frameProcessingTimeElapsed = 0
    end
    

    def self.getInstance()
        return ProfilingRefreshHelper.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def initView(view)
        super(view)
        @frameProcessingTimeElapsed = self.getTimeDelayHelper().getStartTime()
        @bestFrameProcessingTime = 2147483647
        @worstFrameProcessingTime = 0
    end
    

    def nextFrame()
        @frameProcessingTimeElapsed = (Time.now.to_f * 1000).to_i - @frameProcessingTimeElapsed
        if @firstTime != true
            if @frameProcessingTimeElapsed > @worstFrameProcessingTime
                @worstFrameProcessingTime = @frameProcessingTimeElapsed
            end
            if @frameProcessingTimeElapsed < @bestFrameProcessingTime
                @bestFrameProcessingTime = @frameProcessingTimeElapsed
            end
        else
            @firstTime = false
        end
        super()
    end
    

    def toString()
        return StringMaker.new().append(super.to_s).append(" Worst: ").appendint(@worstFrameProcessingTime).append(" Best: ").appendint(@bestFrameProcessingTime).to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/view/View"
require "org/allbinary/logic/string/StringMaker"
require "java/lang/System"

class ProfilingRefreshHelper
    @@instance = ProfilingRefreshHelper.new()
end

