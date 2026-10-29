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
# package org.allbinary.android.api16

require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

class ActivityFractureUtilAPI16 < ActivityFractureUtilAPI5
    

    def self.getInstance()
        return ActivityFractureUtilAPI16.instance16
    end
    

    def setFullScreen(activity)
        decorView = activity.getWindow().getDecorView()
        visibility = View::SYSTEM_UI_FLAG_HIDE_NAVIGATION | View::SYSTEM_UI_FLAG_FULLSCREEN
        decorView.setSystemUiVisibility(visibility)
    end

    def self.instance16()
        return defined?(@@instance16) ? @@instance16 : nil
    end

    def self.instance16=(value)
        @@instance16 = value
    end
end

require "android/app/Activity"
require "android/view/View"

class ActivityFractureUtilAPI16
    @@instance16 = ActivityFractureUtilAPI16.new()
end

