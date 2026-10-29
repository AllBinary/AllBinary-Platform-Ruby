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
# package org.allbinary.bundle.logic.preloader

require "org/osgi/framework/BundleActivator"

class AllBinaryPreloaderActivator
    include BundleActivator
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getBundleContext()
        return AllBinaryPreloaderActivator.context
    end
    

    # throws Exception
    def start(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "start")
            AllBinaryPreloaderActivator.context = context
            self.registerAsService()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "start", e)
            raise e
        end
    end
    

    # throws Exception
    def registerAsService()
        properties = StdUtil.getInstance().createHashtable()
        serviceRegistration = AllBinaryPreloaderActivator.context.registerService(CRYPT_REGISTRY_NAME, CryptServiceFactory.new(), properties)
        serviceReference = serviceRegistration.getReference()
        serviceReference = AllBinaryPreloaderActivator.context.getServiceReference(CRYPT_REGISTRY_NAME)
        if serviceReference == nil
            raise StandardError.new("No Such Service Reference")
        end
    end
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
    end

    def self.context()
        return defined?(@@context) ? @@context : nil
    end

    def self.context=(value)
        @@context = value
    end
end

require "org/osgi/framework/BundleContext"
require "org/osgi/framework/ServiceReference"
require "org/osgi/framework/ServiceRegistration"
require "org/allbinary/bundle/logic/system/loader/CryptServiceFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"

class AllBinaryPreloaderActivator
    @@context = nil
    CRYPT_REGISTRY_NAME = "bundle.abcs.logic.system.loader.CryptService"
end

