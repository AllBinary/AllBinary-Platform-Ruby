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

class HideVirtualKeyboardRunnable
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
        commonStrings = CommonStrings.getInstance()
        begin
            inputMethodManager = @activity.getSystemService(Context::INPUT_METHOD_SERVICE)
            viewCompositeInterface = @activity
            if viewCompositeInterface == nil
                ForcedLogUtil.log("Activity Null", self)
            end
            view = viewCompositeInterface.getView()
            if view.getWindowToken() == nil
                @logUtil.putF("Unable to hide virtual keyboard as window token is null - This usually happens during loading when the view is not attached to a window", self, commonStrings.RUN)
                return
            end
            token = view.getWindowToken()
            inputMethodManager.hideSoftInputFromWindow(token, 0)
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

require "android/app/Activity"
require "android/content/Context"
require "android/os/IBinder"
require "android/view/View"
require "android/view/inputmethod/InputMethodManager"
require "org/allbinary/android/activity/ViewCompositeInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

