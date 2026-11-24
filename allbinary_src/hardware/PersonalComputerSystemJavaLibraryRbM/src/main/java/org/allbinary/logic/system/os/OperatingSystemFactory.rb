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
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Os

class OperatingSystemFactory
    attr_accessor :logUtil, :commonStrings, :genericOperatingSystem, :hasDetected

    def jfields_org_allbinary_logic_system_os_OperatingSystemFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM
        @hasDetected = false
    end
    

    def self.getInstance()
        return OperatingSystemFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_OperatingSystemFactory
    end
    

    def getOperatingSystemInstance()
        java_monitor.synchronize do
        begin
            operatingSystems = OperatingSystems.getInstance()
            systemProperties = SystemProperties.getInstance()
            osName = systemProperties.getName()
            osArch = systemProperties.getArch()
            osVersion = systemProperties.getVersion()
            if !@hasDetected
                @logUtil.putF("osName: " + osName, self, @commonStrings.GET_INSTANCE)
                @hasDetected = true
                if (osName.index(operatingSystems.LINUX) || -1) >= 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Linux OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = ::Org::Allbinary::Logic::System::Os::Linux::LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elsif (osName.index(operatingSystems.WINDOWS) || -1) >= 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Windows OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = ::Org::Allbinary::Logic::System::Os::Windows::WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elsif (osName.index(operatingSystems.SOLARIS) || -1) >= 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Solaris OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = ::Org::Allbinary::Logic::System::Os::Solaris::SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                else
                    raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("OS Not Supported: ").append(osName).to_s)
                end
                log = ::Org::Allbinary::Logic::Communication::Log::LogFactory.getInstanceF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("OperatingSystem Info: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@genericOperatingSystem)).to_s, self, @commonStrings.GET_INSTANCE)
                puts(log.to_s)
                @logUtil.putL(log)
            end
            return @genericOperatingSystem
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            end
            return NoOperatingSystem::NO_OPERATING_SYSTEM
        end
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogFactory, "org/allbinary/logic/communication/log/LogFactory" unless const_defined?(:LogFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; module Linux; autoload :LinuxOperatingSystemFactory, "org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory" unless const_defined?(:LinuxOperatingSystemFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; module Solaris; autoload :SolarisOperatingSystemFactory, "org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory" unless const_defined?(:SolarisOperatingSystemFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; module Windows; autoload :WindowsOperatingSystemFactory, "org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory" unless const_defined?(:WindowsOperatingSystemFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false)
autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem" unless const_defined?(:NoOperatingSystem, false)
autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false)
autoload :SystemProperties, "org/allbinary/logic/system/os/SystemProperties" unless const_defined?(:SystemProperties, false)
require "java/lang/System"

begin
    OperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

