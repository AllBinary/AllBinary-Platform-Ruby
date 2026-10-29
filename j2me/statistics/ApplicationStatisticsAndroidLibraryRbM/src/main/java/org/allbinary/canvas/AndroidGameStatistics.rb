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

require "org/allbinary/canvas/BaseGameStatistics"

class AndroidGameStatistics < BaseGameStatistics
    attr_accessor :view, :totalOnDraws, :ANDROID_STRING_ARRAY, :TOTAL_ONDRAWS, :ONDRAWS_RATE

    def initialize_fields
        @view = BaseViewWrapper::NULL_VIEW_WRAPPER
        @totalOnDraws = 0
        @ANDROID_STRING_ARRAY = Array.new(14, nil)
        @TOTAL_ONDRAWS = " Total onDraws: "
        @ONDRAWS_RATE = " onDraws(/10) Sec: "
    end
    

    def initialize()
        super()
        initialize_fields
        stringUtil = StringUtil.getInstance()
        (0...@ANDROID_STRING_ARRAY.length).each do |index|
            @ANDROID_STRING_ARRAY[index] = stringUtil.EMPTY_STRING
        end
    end
    

    def initView(view)
        self.class.superclass.instance_method(:init).bind(self).call()
        @view = ViewWrapper.new(view)
        @totalOnDraws = 0
    end
    

    def process()
        @view.postInvalidate()
    end
    

    def nextOnDraw()
        @totalOnDraws += 1
    end
    

    def toStringArray()
        stringArray = super()
        (0...stringArray.length).each do |index|
            @ANDROID_STRING_ARRAY[index] = stringArray[index]
        end
        totalTime = self.getTimeDelayHelper().getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 10000)
        @ANDROID_STRING_ARRAY[10] = @TOTAL_ONDRAWS
        @ANDROID_STRING_ARRAY[11] = (@totalOnDraws).to_s
        @ANDROID_STRING_ARRAY[12] = @ONDRAWS_RATE
        @ANDROID_STRING_ARRAY[13] = (@totalOnDraws / totalTime).to_s
        return @ANDROID_STRING_ARRAY
    end
    

    def toString()
        totalTime = self.getTimeDelayHelper().getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 1000)
        if totalTime > 0
            stringBuffer = StringMaker.new()
            stringBuffer.append(self.class.superclass.instance_method(:toStringAt).bind(self).call(totalTime))
            if @totalOnDraws > 0
                stringBuffer.append(@TOTAL_ONDRAWS)
                stringBuffer.append((@totalOnDraws).to_s)
                stringBuffer.append(@ONDRAWS_RATE)
                drawsOverTime = (@totalOnDraws / totalTime).to_s
                stringBuffer.append(drawsOverTime)
            end
            return stringBuffer.to_s
        else
            return @NOT
        end
    end
    alias_method :to_s, :toString
end

require "android/view/View"
require "org/allbinary/android/view/BaseViewWrapper"
require "org/allbinary/android/view/ViewWrapper"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

