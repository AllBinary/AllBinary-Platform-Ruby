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
# package org.allbinary.logic.system.os.android

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Os; module Android

class AndroidOperatingSystemFactory
    attr_accessor :logUtil, :tsUtil

    def jfields_org_allbinary_logic_system_os_android_AndroidOperatingSystemFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_android_AndroidOperatingSystemFactory
    end
    

    # throws Exception
    def getOperatingSystemInstance()
        begin
            _GenericOperatingSystem = nil
            systemProperties = ::Org::Allbinary::Logic::System::Os::SystemProperties.getInstance()
            osName = systemProperties.getName()
            if @tsUtil.compareTo(osName, ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance().ANDROID) == 0
                _GenericOperatingSystem = AndroidOS.new()
            else
                if ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance().isUnknownSpecificOSAllowed()
                    _GenericOperatingSystem = AndroidOS.new()
                else
                    raise StandardError.new("Specific Android OS Not Supported: " + osName)
                end
            end
            return _GenericOperatingSystem
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put("Failed to get OperatingSystem returning NoOperatingSystem", self, commonStrings.GET_INSTANCE, e)
            return ::Org::Allbinary::Logic::System::Os::NoOperatingSystem::NO_OPERATING_SYSTEM
        end
    end

    def self.instance()
        AndroidOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AndroidOperatingSystemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidOperatingSystemFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem" unless const_defined?(:NoOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :SystemProperties, "org/allbinary/logic/system/os/SystemProperties" unless const_defined?(:SystemProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AndroidOS, "org/allbinary/logic/system/os/android/AndroidOS" unless const_defined?(:AndroidOS, false)

begin
    AndroidOperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

