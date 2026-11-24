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
# package org.allbinary.graphics.canvas.transition.progress

require "java/lang/JavaOverload"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class AndroidTitleProgressBar < ProgressCanvas
    attr_accessor :showTitleProgressBarRunnable, :dismissTitleProgressBarRunnable, :progressDialogPortionSetProgressRunnable, :progressDialogSetProgressRunnable, :progressActivity, :portion
    class TitleProgressBarSetProgressRunnable
        include ::Java::Lang::Runnable
        attr_accessor :androidTitleProgressBar

        def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_TitleProgressBarSetProgressRunnable
            @androidTitleProgressBar = nil unless instance_variable_defined?(:@androidTitleProgressBar)
        end
        

        def initialize(androidTitleProgressBar)
            jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_TitleProgressBarSetProgressRunnable
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            begin
                value = ((@androidTitleProgressBar.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                @androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end
    class TitleProgressBarPortionSetProgressRunnable
        include ::Java::Lang::Runnable
        attr_accessor :androidTitleProgressBar

        def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_TitleProgressBarPortionSetProgressRunnable
            @androidTitleProgressBar = nil unless instance_variable_defined?(:@androidTitleProgressBar)
        end
        

        def initialize(androidTitleProgressBar)
            jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_TitleProgressBarPortionSetProgressRunnable
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            begin
                value = (((@androidTitleProgressBar.getValue() + @androidTitleProgressBar.getMaxValue() / @androidTitleProgressBar.portion)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                @androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end
    class ShowTitleProgressBarRunnable
        include ::Java::Lang::Runnable
        attr_accessor :androidTitleProgressBar

        def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_ShowTitleProgressBarRunnable
            @androidTitleProgressBar = nil unless instance_variable_defined?(:@androidTitleProgressBar)
        end
        

        def initialize(androidTitleProgressBar)
            jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_ShowTitleProgressBarRunnable
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            begin
                maxValue = ((@androidTitleProgressBar.getMaxValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                @androidTitleProgressBar.progressActivity.onShowTitleProgressBar(maxValue, false)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end
    class DismissTitleProgressBarRunnable
        include ::Java::Lang::Runnable
        attr_accessor :androidTitleProgressBar

        def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_DismissTitleProgressBarRunnable
            @androidTitleProgressBar = nil unless instance_variable_defined?(:@androidTitleProgressBar)
        end
        

        def initialize(androidTitleProgressBar)
            jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar_DismissTitleProgressBarRunnable
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            begin
                @androidTitleProgressBar.progressActivity.onDismissTitleProgressBar()
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar
        @showTitleProgressBarRunnable = ShowTitleProgressBarRunnable.new(self)
        @dismissTitleProgressBarRunnable = DismissTitleProgressBarRunnable.new(self)
        @progressDialogPortionSetProgressRunnable = TitleProgressBarPortionSetProgressRunnable.new(self)
        @progressDialogSetProgressRunnable = TitleProgressBarSetProgressRunnable.new(self)
        @progressActivity = ::Org::Allbinary::Android::Activity::NullProgressActivity::NULL_PROGRESS_ACTIVITY
        @portion = 0
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_canvas_transition_progress_AndroidTitleProgressBar
    end
    

    def init(activity)
        @progressActivity = activity
    end
    java_overload :init, 1
    

    def isInitialized()
        if @progressActivity != ::Org::Allbinary::Android::Activity::NullProgressActivity::NULL_PROGRESS_ACTIVITY
            return true
        else
            return false
        end
    end
    java_overload :isInitialized, 0
    

    def start()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
            AndroidTitleProgressBar.superclass.java_super_method(:start, 0).bind(self).call()
            @progressActivity.runOnUiThread(@showTitleProgressBarRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    java_overload :start, 0
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            @progressActivity.runOnUiThread(@dismissTitleProgressBarRunnable)
            AndroidTitleProgressBar.superclass.java_super_method(:end_, 0).bind(self).call()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME, e)
        end
    end
    java_overload :end_, 0
    

    def addPortion(value, text, index)
        begin
            AndroidTitleProgressBar.superclass.java_super_method(:addPortion, 3).bind(self).call(value, text, index)
            @portion = value
            @progressActivity.runOnUiThread(@progressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    java_overload :addPortion, 3
    

    def addNormalPortion(value, text)
        begin
            AndroidTitleProgressBar.superclass.java_super_method(:addNormalPortion, 2).bind(self).call(value, text)
            @portion = value
            @progressActivity.runOnUiThread(@progressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    java_overload :addNormalPortion, 2
    

    def setValue(value)
        begin
            AndroidTitleProgressBar.superclass.java_super_method(:setValue, 1).bind(self).call(value)
            @progressActivity.runOnUiThread(@progressDialogSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setValue", e)
        end
    end
    java_overload :setValue, 1
    

    def waitUntilDisplayed()
    end
    java_overload :waitUntilDisplayed, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Android; module Activity; autoload :NullProgressActivity, "org/allbinary/android/activity/NullProgressActivity" unless const_defined?(:NullProgressActivity, false); end; end; end; end
module ::Org; module Allbinary; module Android; module Activity; autoload :ProgressActivityInterface, "org/allbinary/android/activity/ProgressActivityInterface" unless const_defined?(:ProgressActivityInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DismissTitleProgressBarRunnable, "org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable" unless const_defined?(:DismissTitleProgressBarRunnable, false)
autoload :ShowTitleProgressBarRunnable, "org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable" unless const_defined?(:ShowTitleProgressBarRunnable, false)
autoload :TitleProgressBarPortionSetProgressRunnable, "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable" unless const_defined?(:TitleProgressBarPortionSetProgressRunnable, false)
autoload :TitleProgressBarSetProgressRunnable, "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable" unless const_defined?(:TitleProgressBarSetProgressRunnable, false)

end; end; end; end; end; end

