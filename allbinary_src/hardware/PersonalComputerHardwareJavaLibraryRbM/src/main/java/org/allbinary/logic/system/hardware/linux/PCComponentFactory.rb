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
# package org.allbinary.logic.system.hardware.linux


module ::Org; module Allbinary; module Logic; module System; module Hardware; module Linux

class PCComponentFactory
    attr_accessor :logUtil, :componentFactory

    def jfields_org_allbinary_logic_system_hardware_linux_PCComponentFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @componentFactory = ::Org::Allbinary::Logic::System::Hardware::Components::ComponentFactory.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_hardware_linux_PCComponentFactory
    end
    

    def getInstance(component, componentData)
        begin
            if component != nil
                if (component <=> @componentFactory.ETHERNET.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Ethernet.new(componentData)
                elsif (component <=> @componentFactory.BRIDGE.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Bridge.new(componentData)
                elsif (component <=> @componentFactory.IDE.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::HardDriveController.new(componentData)
                elsif (component <=> @componentFactory.MULTIMEDIA.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Media.new(componentData)
                elsif (component <=> @componentFactory.SCSI.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::HardDriveController.new(componentData)
                elsif (component <=> @componentFactory.USB.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Usb.new(componentData)
                elsif (component <=> @componentFactory.VGA.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Video.new(componentData)
                elsif (component <=> @componentFactory.PCI.to_s) == 0
                    return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::PCI.new(componentData)
                end
            end
            return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Unknown.new(componentData)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Unknown.new(commonStrings.EXCEPTION)
        end
    end
    

    def getComponentType(component)
        if (component.index(@componentFactory.ETHERNET.to_s) || -1) >= 0
            return @componentFactory.ETHERNET.to_s
        elsif (component.index(@componentFactory.BRIDGE.to_s) || -1) >= 0
            return @componentFactory.BRIDGE.to_s
        elsif (component.index(@componentFactory.IDE.to_s) || -1) >= 0
            return @componentFactory.IDE.to_s
        elsif (component.index(@componentFactory.MULTIMEDIA.to_s) || -1) >= 0
            return @componentFactory.MULTIMEDIA.to_s
        elsif (component.index(@componentFactory.SCSI.to_s) || -1) >= 0
            return @componentFactory.SCSI.to_s
        elsif (component.index(@componentFactory.USB.to_s) || -1) >= 0
            return @componentFactory.USB.to_s
        elsif (component.index(@componentFactory.VGA.to_s) || -1) >= 0
            return @componentFactory.VGA.to_s
        elsif (component <=> @componentFactory.PCI.to_s) == 0
            return @componentFactory.PCI.to_s
        end
        return @componentFactory.UNKNOWN.to_s
    end

    def self.instance()
        PCComponentFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PCComponentFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PCComponentFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PCComponentFactory"
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
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; autoload :ComponentFactory, "org/allbinary/logic/system/hardware/components/ComponentFactory" unless const_defined?(:ComponentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" unless const_defined?(:HardwareComponentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Bridge, "org/allbinary/logic/system/hardware/components/linux/Bridge" unless const_defined?(:Bridge, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Ethernet, "org/allbinary/logic/system/hardware/components/linux/Ethernet" unless const_defined?(:Ethernet, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :HardDriveController, "org/allbinary/logic/system/hardware/components/linux/HardDriveController" unless const_defined?(:HardDriveController, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Media, "org/allbinary/logic/system/hardware/components/linux/Media" unless const_defined?(:Media, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :PCI, "org/allbinary/logic/system/hardware/components/linux/PCI" unless const_defined?(:PCI, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Unknown, "org/allbinary/logic/system/hardware/components/linux/Unknown" unless const_defined?(:Unknown, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Usb, "org/allbinary/logic/system/hardware/components/linux/Usb" unless const_defined?(:Usb, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Video, "org/allbinary/logic/system/hardware/components/linux/Video" unless const_defined?(:Video, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    PCComponentFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

