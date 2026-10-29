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
# package org.allbinary.android.api19

require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

class ActivityFractureUtilAPI19 < ActivityFractureUtilAPI5
    

    def self.getInstance()
        return ActivityFractureUtilAPI19.instance19
    end
    

    def setFullScreen(activity)
        decorView = activity.getWindow().getDecorView()
        visibility = View::SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View::SYSTEM_UI_FLAG_HIDE_NAVIGATION | View::SYSTEM_UI_FLAG_FULLSCREEN
        decorView.setSystemUiVisibility(visibility)
    end

    def self.instance19()
        return defined?(@@instance19) ? @@instance19 : nil
    end

    def self.instance19=(value)
        @@instance19 = value
    end
end

require "android/app/Activity"
require "android/view/View"

class ActivityFractureUtilAPI19
    @@instance19 = ActivityFractureUtilAPI19.new()
end

