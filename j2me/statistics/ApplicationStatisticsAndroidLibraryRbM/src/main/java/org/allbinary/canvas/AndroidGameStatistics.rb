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
require "org/allbinary/canvas/BaseGameStatistics"

module ::Org; module Allbinary; module Canvas

class AndroidGameStatistics < BaseGameStatistics
    attr_accessor :view, :totalOnDraws, :ANDROID_STRING_ARRAY, :TOTAL_ONDRAWS, :ONDRAWS_RATE

    def jfields_org_allbinary_canvas_AndroidGameStatistics
        @view = ::Org::Allbinary::Android::View::BaseViewWrapper::NULL_VIEW_WRAPPER
        @totalOnDraws = 0 unless instance_variable_defined?(:@totalOnDraws)
        @ANDROID_STRING_ARRAY = Array.new(14, nil)
        @TOTAL_ONDRAWS = " Total onDraws: "
        @ONDRAWS_RATE = " onDraws(/10) Sec: "
    end
    

    def initialize()
        super()
        jfields_org_allbinary_canvas_AndroidGameStatistics
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        (0...@ANDROID_STRING_ARRAY.length).each do |index|
            @ANDROID_STRING_ARRAY[index] = stringUtil.EMPTY_STRING
        end
    end
    

    def initView(view)
        AndroidGameStatistics.superclass.java_super_method(:init, 0).bind(self).call()
        @view = ::Org::Allbinary::Android::View::ViewWrapper.new(view)
        @totalOnDraws = 0
    end
    java_overload :initView, 1
    

    def process()
        @view.postInvalidate()
    end
    java_overload :process, 0
    

    def nextOnDraw()
        @totalOnDraws += 1
    end
    java_overload :nextOnDraw, 0
    

    def toStringArray()
        stringArray = AndroidGameStatistics.superclass.java_super_method(:toStringArray, 0).bind(self).call()
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
    java_overload :toStringArray, 0
    

    def toString()
        totalTime = self.getTimeDelayHelper().getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 1000)
        if totalTime > 0
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(AndroidGameStatistics.superclass.java_super_method(:toStringAt, 1).bind(self).call(totalTime))
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Org; module Allbinary; module Android; module View; autoload :BaseViewWrapper, "org/allbinary/android/view/BaseViewWrapper" unless const_defined?(:BaseViewWrapper, false); end; end; end; end
module ::Org; module Allbinary; module Android; module View; autoload :ViewWrapper, "org/allbinary/android/view/ViewWrapper" unless const_defined?(:ViewWrapper, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end

