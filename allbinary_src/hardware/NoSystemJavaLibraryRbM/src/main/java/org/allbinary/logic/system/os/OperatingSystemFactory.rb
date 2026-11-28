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
# package org.allbinary.logic.system.os

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module System; module Os

class OperatingSystemFactory
    attr_accessor :logUtil, :genericOperatingSystem

    def jfields_org_allbinary_logic_system_os_OperatingSystemFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_OperatingSystemFactory
    end
    

    def getOperatingSystemInstance()
        java_monitor.synchronize do
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            osString = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("OperatingSystem Info: ").append(@genericOperatingSystem.to_s).to_s
            puts(osString)
            @logUtil.putF(osString, self, commonStrings.GET_INSTANCE)
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @genericOperatingSystem
        end
    end

    def self.instance()
        OperatingSystemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OperatingSystemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OperatingSystemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OperatingSystemFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false)
autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem" unless const_defined?(:NoOperatingSystem, false)
require "java/lang/System"

begin
    OperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

