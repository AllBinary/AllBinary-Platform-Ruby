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

require "org/allbinary/android/activity/KeyInputViewCompositeInterface"

class NullKeyInputViewComposite
    include KeyInputViewCompositeInterface
    

    def setKeyInputView(keyInputView)
    end
    

    def getRootView()
        raise RuntimeError.new()
    end
    

    def getView()
        raise RuntimeError.new()
    end
    

    def runOnUiThread(action)
    end
end

require "android/view/View"
require "java/lang/Runnable"

class NullKeyInputViewComposite
    NULL_KEY_INPUT_VIEW_COMPOSITE = NullKeyInputViewComposite.new()
end

