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
# package org.allbinary.logic.system.os.windows

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Os; module Windows

class WindowsOperatingSystemFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_system_os_windows_WindowsOperatingSystemFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return WindowsOperatingSystemFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_windows_WindowsOperatingSystemFactory
    end
    

    def getOperatingSystemInstance()
        begin
            operatingSystems = ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance()
            osName = ::Org::Allbinary::Logic::System::Os::SystemProperties.getInstance().getName()
            operatingSystemInterface = nil
            if (osName <=> operatingSystems.WINDOWS_NT) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_10) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_11) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS2000) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_XP) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_VISTA) == 0
                operatingSystemInterface = WindowsOS.new()
            else
                if operatingSystems.isUnknownSpecificOSAllowed()
                    operatingSystemInterface = WindowsOS.new()
                else
                    raise StandardError.new("Specific Windows OS Not Supported: " + osName)
                end
            end
            return operatingSystemInterface
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return ::Org::Allbinary::Logic::System::Os::NoOperatingSystem::NO_OPERATING_SYSTEM
        end
    end

    def self.instance()
        WindowsOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        WindowsOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = WindowsOperatingSystemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WindowsOperatingSystemFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem" unless const_defined?(:NoOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :SystemProperties, "org/allbinary/logic/system/os/SystemProperties" unless const_defined?(:SystemProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :WindowsOS, "org/allbinary/logic/system/os/windows/WindowsOS" unless const_defined?(:WindowsOS, false)

begin
    WindowsOperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

