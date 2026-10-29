#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion


class ActivityFractureInputUtilFactory
    

    def self.getInstance()
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 4
            return ActivityFractureUtilAPI1.getInstance()
        elsif _SDK_VERSION <= 15
            return ActivityFractureUtilAPI5.getInstance()
        elsif _SDK_VERSION <= 16
            return ActivityFractureUtilAPI16.getInstance()
        else
            return ActivityFractureUtilAPI19.getInstance()
        end
    end
end

require "org/allbinary/android/ActivityFractureUtil"
require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/android/api1/ActivityFractureUtilAPI1"
require "org/allbinary/android/api16/ActivityFractureUtilAPI16"
require "org/allbinary/android/api19/ActivityFractureUtilAPI19"
require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

