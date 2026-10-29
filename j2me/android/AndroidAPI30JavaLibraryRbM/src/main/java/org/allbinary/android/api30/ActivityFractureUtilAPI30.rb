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
# package org.allbinary.android.api30

require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

class ActivityFractureUtilAPI30 < ActivityFractureUtilAPI5
    

    def self.getInstance()
        return ActivityFractureUtilAPI30.instance30
    end
    

    def setFullScreen(activity)
        window = activity.getWindow()
        windowInsetsController = WindowCompat.getInsetsController(window, window.getDecorView())
        windowInsetsController.hide(WindowInsetsCompat::Type.systemBars())
        windowInsetsController.setSystemBarsBehavior(WindowInsetsControllerCompat::BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE)
    end

    def self.instance30()
        return defined?(@@instance30) ? @@instance30 : nil
    end

    def self.instance30=(value)
        @@instance30 = value
    end
end

require "android/app/Activity"
require "android/view/Window"
require "androidx/core/view/WindowCompat"
require "androidx/core/view/WindowInsetsCompat"
require "androidx/core/view/WindowInsetsControllerCompat"

class ActivityFractureUtilAPI30
    @@instance30 = ActivityFractureUtilAPI30.new()
end

