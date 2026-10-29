# 
# AllBinary Open License Version 1 
# Copyright (c) 2019 AllBinary 
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
# package org.allbinary.android

# require "java/util/List"

class AndroidServicesUtil
    attr_accessor :logUtil, :resourceUtil, :SERVICE_LIMIT_MAX, :IS_SERVICE_RUNNING, :SERVICE_NOT_FOUND_RUNNING

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @resourceUtil = ResourceUtil.getInstance()
        @SERVICE_LIMIT_MAX = 1000
        @IS_SERVICE_RUNNING = "isServiceRunning"
        @SERVICE_NOT_FOUND_RUNNING = "Service not found Running: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AndroidServicesUtil.instance
    end
    

    def isServiceRunning(name)
        activityManager = @resourceUtil.getContext().getSystemService(Context::ACTIVITY_SERVICE)
        runningServicesList = activityManager.getRunningServices(@SERVICE_LIMIT_MAX)
        runningServiceInfo = nil
        serviceComponent = nil
        serviceName = nil
        size = runningServicesList.size()
        (0...size).each do |index|
            runningServiceInfo = runningServicesList.get(index)
            serviceComponent = runningServiceInfo.service
            serviceName = serviceComponent.to_s
            if (serviceName.index(name) || -1) >= 0
                return true
            end
        end
        @logUtil.putF(@SERVICE_NOT_FOUND_RUNNING + name, self, @IS_SERVICE_RUNNING)
        return false
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/app/ActivityManager"
require "android/app/ActivityManager/RunningServiceInfo"
require "android/content/ComponentName"
require "android/content/Context"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/communication/log/LogUtil"

class AndroidServicesUtil
    @@instance = AndroidServicesUtil.new()
end

