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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "java/lang/Runnable"

class AndroidTitleProgressBar < ProgressCanvas
    attr_accessor :showTitleProgressBarRunnable, :dismissTitleProgressBarRunnable, :progressDialogPortionSetProgressRunnable, :progressDialogSetProgressRunnable, :progressActivity, :portion
    class TitleProgressBarSetProgressRunnable
        include Runnable
        attr_accessor :androidTitleProgressBar

        def initialize_fields
            @androidTitleProgressBar = nil
        end
        

        def initialize(androidTitleProgressBar)
            initialize_fields
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            begin
                value = (@androidTitleProgressBar.getValue()).to_i
                @androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end
    class TitleProgressBarPortionSetProgressRunnable
        include Runnable
        attr_accessor :androidTitleProgressBar

        def initialize_fields
            @androidTitleProgressBar = nil
        end
        

        def initialize(androidTitleProgressBar)
            initialize_fields
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            begin
                value = ((@androidTitleProgressBar.getValue() + @androidTitleProgressBar.getMaxValue() / @androidTitleProgressBar.portion)).to_i
                @androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end
    class ShowTitleProgressBarRunnable
        include Runnable
        attr_accessor :androidTitleProgressBar

        def initialize_fields
            @androidTitleProgressBar = nil
        end
        

        def initialize(androidTitleProgressBar)
            initialize_fields
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            begin
                maxValue = (@androidTitleProgressBar.getMaxValue()).to_i
                @androidTitleProgressBar.progressActivity.onShowTitleProgressBar(maxValue, false)
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end
    class DismissTitleProgressBarRunnable
        include Runnable
        attr_accessor :androidTitleProgressBar

        def initialize_fields
            @androidTitleProgressBar = nil
        end
        

        def initialize(androidTitleProgressBar)
            initialize_fields
            @androidTitleProgressBar = androidTitleProgressBar
        end
        

        def run()
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            begin
                @androidTitleProgressBar.progressActivity.onDismissTitleProgressBar()
            rescue StandardError => e
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end

    def initialize_fields
        @showTitleProgressBarRunnable = ShowTitleProgressBarRunnable.new(self)
        @dismissTitleProgressBarRunnable = DismissTitleProgressBarRunnable.new(self)
        @progressDialogPortionSetProgressRunnable = TitleProgressBarPortionSetProgressRunnable.new(self)
        @progressDialogSetProgressRunnable = TitleProgressBarSetProgressRunnable.new(self)
        @progressActivity = NullProgressActivity::NULL_PROGRESS_ACTIVITY
        @portion = 0
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
    end
    

    def init(activity)
        @progressActivity = activity
    end
    

    def isInitialized()
        if @progressActivity != NullProgressActivity::NULL_PROGRESS_ACTIVITY
            return true
        else
            return false
        end
    end
    

    def start()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
            super()
            @progressActivity.runOnUiThread(@showTitleProgressBarRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            @progressActivity.runOnUiThread(@dismissTitleProgressBarRunnable)
            super()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME, e)
        end
    end
    

    def addPortion(value, text, index)
        begin
            super(value, text, index)
            @portion = value
            @progressActivity.runOnUiThread(@progressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    

    def addNormalPortion(value, text)
        begin
            super(value, text)
            @portion = value
            @progressActivity.runOnUiThread(@progressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    

    def setValue(value)
        begin
            super(value)
            @progressActivity.runOnUiThread(@progressDialogSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setValue", e)
        end
    end
    

    def waitUntilDisplayed()
    end
    

    def paint(graphics)
    end
end

require "org/allbinary/android/activity/NullProgressActivity"
require "org/allbinary/android/activity/ProgressActivityInterface"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable"
require "org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable"
require "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable"
require "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable"

