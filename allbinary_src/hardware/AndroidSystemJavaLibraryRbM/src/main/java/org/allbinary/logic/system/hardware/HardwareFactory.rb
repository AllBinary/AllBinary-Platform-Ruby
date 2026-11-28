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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Hardware

class HardwareFactory
    attr_accessor :logUtil, :tsUtil

    def jfields_org_allbinary_logic_system_hardware_HardwareFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_hardware_HardwareFactory
    end
    

    # throws Exception
    def getInstance(os)
        begin
            operatingSystems = ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance()
            if @tsUtil.compareTo(os.getName(), operatingSystems.ANDROID) == 0
                return ::Org::Allbinary::Logic::System::Hardware::Android::AndroidHardware.new()
            elsif @tsUtil.compareTo(os.getName(), operatingSystems.HARMONY) == 0
                return ::Org::Allbinary::Logic::System::Hardware::Android::AndroidHardware.new()
            end
            raise StandardError.new("No Hardware Imp for: " + os.getName())
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put("Ignoring Exception Returning NoHardware", self, commonStrings.GET_INSTANCE, e)
            return NoHardware.new()
        end
    end

    def self.instance()
        HardwareFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HardwareFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HardwareFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HardwareFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Android; autoload :AndroidHardware, "org/allbinary/logic/system/hardware/android/AndroidHardware" unless const_defined?(:AndroidHardware, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :HardwareInterface, "org/allbinary/logic/system/hardware/HardwareInterface" unless const_defined?(:HardwareInterface, false)
autoload :NoHardware, "org/allbinary/logic/system/hardware/NoHardware" unless const_defined?(:NoHardware, false)

begin
    HardwareFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

