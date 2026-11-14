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
# package org.allbinary.business.init

require "java/lang/Object"

class LicenseInitInfoUtil
    attr_accessor :INITFILENAME, :ABOUT, :PRIVACY_POLICY, :OFFICIAL_ALLBINARY_SERVICES_SERVER

    def initialize_fields
        @INITFILENAME = "licenseinitdata.dat"
        @ABOUT = "about"
        @PRIVACY_POLICY = "privacy_policy"
        @OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
    end
    

    def self.getInstance()
        return LicenseInitInfoUtil.instance
    end
    

    def setFilePath(filePath)
        java_monitor.synchronize do
        end
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def write(initData)
        java_monitor.synchronize do
        end
    end
    

    # throws Exception
    def read()
        java_monitor.synchronize do
        return self.readAgain(0)
        end
    end
    

    # throws Exception
    def readAgain(initializeCounter)
        java_monitor.synchronize do
        licenseInitInfo = LicenseInitInfo.new()
        licenseInitInfo.clearServers()
        licenseInitInfo.addServer(@OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo
        end
    end

    def self.instance()
        LicenseInitInfoUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LicenseInitInfoUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LicenseInitInfoUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseInitInfoUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo"

begin
    LicenseInitInfoUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

