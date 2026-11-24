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

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Android; module Input; module Api3

class HideVirtualKeyboardRunnable
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :activity

    def jfields_org_allbinary_android_input_api3_HideVirtualKeyboardRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @activity = nil unless instance_variable_defined?(:@activity)
    end
    

    def initialize(activity)
        jfields_org_allbinary_android_input_api3_HideVirtualKeyboardRunnable
        @activity = activity
    end
    

    def run()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            inputMethodManager = @activity.getSystemService(::Android::Content::Context::INPUT_METHOD_SERVICE)
            viewCompositeInterface = @activity
            if viewCompositeInterface == nil
                ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Activity Null", self)
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
    java_overload :run, 0
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Os; autoload :IBinder, "android/os/IBinder" unless const_defined?(:IBinder, false); end; end
module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Android; module View; module Inputmethod; autoload :InputMethodManager, "android/view/inputmethod/InputMethodManager" unless const_defined?(:InputMethodManager, false); end; end; end
module ::Org; module Allbinary; module Android; module Activity; autoload :ViewCompositeInterface, "org/allbinary/android/activity/ViewCompositeInterface" unless const_defined?(:ViewCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

