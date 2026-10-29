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

require "android/app/Activity"
require "org/allbinary/android/GenericMotionEventVerifyInterface"
require "org/allbinary/game/configuration/event/GameFeatureListenerInterface"
require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"
require "org/allbinary/android/activity/KeyInputViewCompositeInterface"
require "org/allbinary/android/activity/SimpleProgressActivityInterface"

class MidletActivityBase < Activity
    include GameFeatureListenerInterface
    include GameInitializedListenerInterface
    include SimpleProgressActivityInterface
    include KeyInputViewCompositeInterface
    include GenericMotionEventVerifyInterface
    

    def onGameFeatureChange(gameFeatureEvent)
    end
    

    def onEvent(eventObject)
    end
    

    def onGameInitialized(gameInitializedEvent)
    end
    

    # throws Exception
    def onSetProgress(value, text)
    end
    

    # throws Exception
    def onDismissProgress(animationSequence)
    end
    

    # throws Exception
    def onShowProgress(indeterminate, animationSequence)
    end
    

    def getRootView()
        raise RuntimeError.new()
    end
    

    def getView()
        raise RuntimeError.new()
    end
    

    def setKeyInputView(keyInputView)
    end
    

    def onGenericMotionEvent(event)
        raise RuntimeError.new()
    end
end

require "android/view/MotionEvent"
require "android/view/View"
require "org/allbinary/game/configuration/event/GameFeatureEvent"
require "org/allbinary/game/configuration/event/GameInitializedEvent"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

