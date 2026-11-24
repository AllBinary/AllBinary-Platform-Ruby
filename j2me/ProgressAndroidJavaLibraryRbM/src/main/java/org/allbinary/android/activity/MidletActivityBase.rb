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

require "java/lang/JavaOverload"
require "android/app/Activity"
require "org/allbinary/android/GenericMotionEventVerifyInterface"
require "org/allbinary/game/configuration/event/GameFeatureListenerInterface"
require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"
require "org/allbinary/android/activity/KeyInputViewCompositeInterface"
require "org/allbinary/android/activity/SimpleProgressActivityInterface"

module ::Org; module Allbinary; module Android; module Activity

class MidletActivityBase < ::Android::App::Activity
    include ::Org::Allbinary::Game::Configuration::Event::GameFeatureListenerInterface
    include ::Org::Allbinary::Game::Configuration::Event::GameInitializedListenerInterface
    include SimpleProgressActivityInterface
    include KeyInputViewCompositeInterface
    include ::Org::Allbinary::Android::GenericMotionEventVerifyInterface
    

    def onGameFeatureChange(gameFeatureEvent)
    end
    java_overload :onGameFeatureChange, 1
    

    def onEvent(eventObject)
    end
    java_overload :onEvent, 1
    

    def onGameInitialized(gameInitializedEvent)
    end
    java_overload :onGameInitialized, 1
    

    # throws Exception
    def onSetProgress(value, text)
    end
    java_overload :onSetProgress, 2
    

    # throws Exception
    def onDismissProgress(animationSequence)
    end
    java_overload :onDismissProgress, 1
    

    # throws Exception
    def onShowProgress(indeterminate, animationSequence)
    end
    java_overload :onShowProgress, 2
    

    def getRootView()
        raise RuntimeError.new()
    end
    java_overload :getRootView, 0
    

    def getView()
        raise RuntimeError.new()
    end
    java_overload :getView, 0
    

    def setKeyInputView(keyInputView)
    end
    java_overload :setKeyInputView, 1
    

    def onGenericMotionEvent(event)
        raise RuntimeError.new()
    end
    java_overload :onGenericMotionEvent, 1
end

module ::Android; module View; autoload :MotionEvent, "android/view/MotionEvent" unless const_defined?(:MotionEvent, false); end; end
module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent" unless const_defined?(:GameFeatureEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent" unless const_defined?(:GameInitializedEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end

end; end; end; end

