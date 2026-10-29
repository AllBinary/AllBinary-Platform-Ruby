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
# package org.allbinary.android.activity


module ViewCompositeInterface
    

    def getRootView()
        raise NotImplementedError
    end
    

    def getView()
        raise NotImplementedError
    end
    

    def runOnUiThread(action)
        raise NotImplementedError
    end
end

require "android/view/View"
require "java/lang/Runnable"

