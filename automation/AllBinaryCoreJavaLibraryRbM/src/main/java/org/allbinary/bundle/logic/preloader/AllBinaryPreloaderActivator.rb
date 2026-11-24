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

require "java/lang/JavaOverload"
require "org/osgi/framework/BundleActivator"

module ::Org; module Allbinary; module Bundle; module Logic; module Preloader

class AllBinaryPreloaderActivator
    include ::Org::Osgi::Framework::BundleActivator
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_bundle_logic_preloader_AllBinaryPreloaderActivator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_bundle_logic_preloader_AllBinaryPreloaderActivator
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
    java_overload :start, 1
    

    # throws Exception
    def registerAsService()
        properties = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        serviceRegistration = AllBinaryPreloaderActivator.context.registerService(CRYPT_REGISTRY_NAME, ::Org::Allbinary::Bundle::Logic::System::Loader::CryptServiceFactory.new(), properties)
        serviceReference = serviceRegistration.getReference()
        serviceReference = AllBinaryPreloaderActivator.context.getServiceReference(CRYPT_REGISTRY_NAME)
        if serviceReference == nil
            raise StandardError.new("No Such Service Reference")
        end
    end
    java_overload :registerAsService, 0
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
    end
    java_overload :stop, 1

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

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false); end; end; end
module ::Org; module Allbinary; module Bundle; module Logic; module System; module Loader; autoload :CryptServiceFactory, "org/allbinary/bundle/logic/system/loader/CryptServiceFactory" unless const_defined?(:CryptServiceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    AllBinaryPreloaderActivator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

