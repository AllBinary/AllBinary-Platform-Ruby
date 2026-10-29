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
# package org.allbinary.android.api1

require "org/allbinary/android/ActivityFractureUtil"

class ActivityFractureUtilAPI1 < ActivityFractureUtil
    

    def self.getInstance()
        return ActivityFractureUtilAPI1.instance
    end
    

    # throws Exception
    def process(activity)
    end
    

    def setFullScreen(activity)
        activity.getWindow().setFlags(WindowManager::LayoutParams.FLAG_FULLSCREEN, WindowManager::LayoutParams.FLAG_FULLSCREEN)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/app/Activity"
require "android/view/WindowManager"

class ActivityFractureUtilAPI1
    @@instance = ActivityFractureUtilAPI1.new()
end

