# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.android.activity

require "org/allbinary/android/activity/ProgressActivityInterface"

class NullProgressActivity
    include ProgressActivityInterface
    

    def runOnUiThread(action)
    end
    

    def onDismissTitleProgressBar()
    end
    

    def onShowTitleProgressBar(value, indeterminate)
    end
    

    def onTitleProgressBarSetProgress(value)
    end
end

require "java/lang/Runnable"

class NullProgressActivity
    NULL_PROGRESS_ACTIVITY = NullProgressActivity.new()
end

