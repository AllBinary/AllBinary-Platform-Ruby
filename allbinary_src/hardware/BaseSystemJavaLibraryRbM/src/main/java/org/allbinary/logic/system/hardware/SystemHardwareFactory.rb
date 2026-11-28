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
# package org.allbinary.logic.system.hardware


module ::Org; module Allbinary; module Logic; module System; module Hardware

class SystemHardwareFactory
    attr_accessor :logUtil, :commonStrings, :hardwareInterface

    def jfields_org_allbinary_logic_system_hardware_SystemHardwareFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @hardwareInterface = NoHardware.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_hardware_SystemHardwareFactory
    end
    

    def getInstance(operatingSystemInterface)
        begin
            if @hardwareInterface == NoHardware.getInstance()
                @hardwareInterface = HardwareFactory.getInstance().getInstance(operatingSystemInterface)
            end
            @logUtil.putF("Found Hardware", self, @commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
        return @hardwareInterface
    end
    

    def self.static_toString()
        systemHardwareFactory = SystemHardwareFactory.getInstance()
        osBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        osBuffer.append("Hardware Info: \n")
        if systemHardwareFactory.hardwareInterface != nil
            osBuffer.append(systemHardwareFactory.hardwareInterface.to_s)
        else
            osBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING)
        end
        return osBuffer.to_s
    end

    def self.instance()
        SystemHardwareFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SystemHardwareFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SystemHardwareFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SystemHardwareFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :HardwareFactory, "org/allbinary/logic/system/hardware/HardwareFactory" unless const_defined?(:HardwareFactory, false)
autoload :HardwareInterface, "org/allbinary/logic/system/hardware/HardwareInterface" unless const_defined?(:HardwareInterface, false)
autoload :NoHardware, "org/allbinary/logic/system/hardware/NoHardware" unless const_defined?(:NoHardware, false)

begin
    SystemHardwareFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

