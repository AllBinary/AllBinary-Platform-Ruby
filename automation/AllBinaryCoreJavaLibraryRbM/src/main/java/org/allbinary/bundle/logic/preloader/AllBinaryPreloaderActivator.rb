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
        AllBinaryPreloaderActivator.java_static_fields unless @java_static_fields_started
        return defined?(@@context) ? @@context : nil
    end

    def self.context=(value)
        AllBinaryPreloaderActivator.java_static_fields unless @java_static_fields_started
        @@context = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CRYPT_REGISTRY_NAME, "bundle.abcs.logic.system.loader.CryptService")
        begin
            @@context = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryPreloaderActivator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CRYPT_REGISTRY_NAME].include?(name)
        end
        super
    end
end

autoload :BundleContext, "org/osgi/framework/BundleContext"
autoload :ServiceReference, "org/osgi/framework/ServiceReference"
autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration"
autoload :CryptServiceFactory, "org/allbinary/bundle/logic/system/loader/CryptServiceFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    AllBinaryPreloaderActivator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

