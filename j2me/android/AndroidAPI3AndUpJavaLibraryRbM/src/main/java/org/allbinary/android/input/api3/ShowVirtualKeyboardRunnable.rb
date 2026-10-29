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
# package org.allbinary.android.input.api3

require "java/lang/Runnable"

class ShowVirtualKeyboardRunnable
    include Runnable
    attr_accessor :logUtil, :activity

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @activity = nil
    end
    

    def initialize(activity)
        initialize_fields
        @activity = activity
    end
    

    def run()
        begin
            inputMethodManager = @activity.getSystemService(Context::INPUT_METHOD_SERVICE)
            viewCompositeInterface = @activity
            if viewCompositeInterface == nil
                ForcedLogUtil.log("Activity Null", self)
            end
            view = viewCompositeInterface.getView()
            inputMethodManager.toggleSoftInputFromWindow(view.getWindowToken(), InputMethodManager::SHOW_FORCED, 0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

require "android/app/Activity"
require "android/content/Context"
require "android/view/View"
require "android/view/inputmethod/InputMethodManager"
require "org/allbinary/android/activity/ViewCompositeInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

