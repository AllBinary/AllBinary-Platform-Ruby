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

module ::Org; module Allbinary; module Android

class AndroidServicesUtil
    attr_accessor :logUtil, :resourceUtil, :SERVICE_LIMIT_MAX, :IS_SERVICE_RUNNING, :SERVICE_NOT_FOUND_RUNNING

    def jfields_org_allbinary_android_AndroidServicesUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        @SERVICE_LIMIT_MAX = 1000
        @IS_SERVICE_RUNNING = "isServiceRunning"
        @SERVICE_NOT_FOUND_RUNNING = "Service not found Running: "
    end

    def initialize
        jfields_org_allbinary_android_AndroidServicesUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def isServiceRunning(name)
        activityManager = @resourceUtil.getContext().getSystemService(::Android::Content::Context::ACTIVITY_SERVICE)
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
        AndroidServicesUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidServicesUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AndroidServicesUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidServicesUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :ActivityManager, "android/app/ActivityManager" unless const_defined?(:ActivityManager, false); end; end
module ::Android; module App; autoload :ActivityManager, "android/app/ActivityManager" unless const_defined?(:ActivityManager, false); end; end
module ::Android; module Content; autoload :ComponentName, "android/content/ComponentName" unless const_defined?(:ComponentName, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

begin
    AndroidServicesUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

