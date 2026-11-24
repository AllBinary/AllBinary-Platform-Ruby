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

require "java/lang/JavaOverload"
require "org/allbinary/canvas/AndroidGameStatistics"

module ::Org; module Allbinary; module Canvas

class ProfilingRefreshHelper < AndroidGameStatistics
    attr_accessor :firstTime, :bestFrameProcessingTime, :worstFrameProcessingTime, :frameProcessingTimeElapsed

    def jfields_org_allbinary_canvas_ProfilingRefreshHelper
        @firstTime = true
        @bestFrameProcessingTime = 0 unless instance_variable_defined?(:@bestFrameProcessingTime)
        @worstFrameProcessingTime = 0 unless instance_variable_defined?(:@worstFrameProcessingTime)
        @frameProcessingTimeElapsed = 0 unless instance_variable_defined?(:@frameProcessingTimeElapsed)
    end
    

    def self.getInstance()
        return ProfilingRefreshHelper.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_canvas_ProfilingRefreshHelper
    end
    

    def initView(view)
        ProfilingRefreshHelper.superclass.java_super_method(:initView, 1).bind(self).call(view)
        @frameProcessingTimeElapsed = self.getTimeDelayHelper().getStartTime()
        @bestFrameProcessingTime = 2147483647
        @worstFrameProcessingTime = 0
    end
    java_overload :initView, 1
    

    def nextFrame()
        @frameProcessingTimeElapsed = (::Time.now.to_f * 1000).to_i - @frameProcessingTimeElapsed
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
        ProfilingRefreshHelper.superclass.java_super_method(:nextFrame, 0).bind(self).call()
    end
    java_overload :nextFrame, 0
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append(" Worst: ").appendint(@worstFrameProcessingTime).append(" Best: ").appendint(@bestFrameProcessingTime).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.instance()
        ProfilingRefreshHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ProfilingRefreshHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ProfilingRefreshHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ProfilingRefreshHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
require "java/lang/System"

begin
    ProfilingRefreshHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

