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
# package org.allbinary.logic.system.hardware.windows

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/hardware/HardwareInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Windows

class WindowsHardware
    include ::Org::Allbinary::Logic::System::Hardware::HardwareInterface
    attr_accessor :componentInterfaceVector, :videoInterfaceVector, :hardDriveControllerInterfaceVector, :cpuInterfaceVector, :usbInterfaceVector, :ethernetInterfaceVector, :multimediaInterfaceVector, :fireWireInterfaceVector, :bridgeInterfaceVector, :hardDriveInterfaceVector, :macInterfaceVector, :monitorInterfaceVector, :NAME, :MINHARDWARE, :componentFactory

    def jfields_org_allbinary_logic_system_hardware_windows_WindowsHardware
        @componentInterfaceVector = nil unless instance_variable_defined?(:@componentInterfaceVector)
        @videoInterfaceVector = nil unless instance_variable_defined?(:@videoInterfaceVector)
        @hardDriveControllerInterfaceVector = nil unless instance_variable_defined?(:@hardDriveControllerInterfaceVector)
        @cpuInterfaceVector = nil unless instance_variable_defined?(:@cpuInterfaceVector)
        @usbInterfaceVector = nil unless instance_variable_defined?(:@usbInterfaceVector)
        @ethernetInterfaceVector = nil unless instance_variable_defined?(:@ethernetInterfaceVector)
        @multimediaInterfaceVector = nil unless instance_variable_defined?(:@multimediaInterfaceVector)
        @fireWireInterfaceVector = nil unless instance_variable_defined?(:@fireWireInterfaceVector)
        @bridgeInterfaceVector = nil unless instance_variable_defined?(:@bridgeInterfaceVector)
        @hardDriveInterfaceVector = nil unless instance_variable_defined?(:@hardDriveInterfaceVector)
        @macInterfaceVector = nil unless instance_variable_defined?(:@macInterfaceVector)
        @monitorInterfaceVector = nil unless instance_variable_defined?(:@monitorInterfaceVector)
        @NAME = "Windows Hardware Profile"
        @MINHARDWARE = 0
        @componentFactory = ::Org::Allbinary::Logic::System::Hardware::Components::ComponentFactory.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_hardware_windows_WindowsHardware
        begin
            @componentInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @videoInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @hardDriveControllerInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @cpuInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @usbInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @ethernetInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @multimediaInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @fireWireInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @bridgeInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @hardDriveInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @macInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            @monitorInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            if @componentInterfaceVector.size() < @MINHARDWARE
                raise StandardError.new("Not Enough Data For A Valid License On Windows")
            end
        rescue StandardError => e
            raise e
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
        else
            return nil
        end
    end
    java_overload :getComponentType, 1
    

    def getMultimedia(index)
        return @multimediaInterfaceVector.get(index)
    end
    java_overload :getMultimedia, 1
    

    def getBridge(index)
        return @bridgeInterfaceVector.get(index)
    end
    java_overload :getBridge, 1
    

    def getCpu(index)
        return @cpuInterfaceVector.get(index)
    end
    java_overload :getCpu, 1
    

    def getEthernet(index)
        return @ethernetInterfaceVector.get(index)
    end
    java_overload :getEthernet, 1
    

    def getFireWire(index)
        return @fireWireInterfaceVector.get(index)
    end
    java_overload :getFireWire, 1
    

    def getHardDriveController(index)
        return @hardDriveControllerInterfaceVector.get(index)
    end
    java_overload :getHardDriveController, 1
    

    def getHardDrive(index)
        return @hardDriveInterfaceVector.get(index)
    end
    java_overload :getHardDrive, 1
    

    def getMachineAccessControlAddress(index)
        return @macInterfaceVector.get(index)
    end
    java_overload :getMachineAccessControlAddress, 1
    

    def getMonitor(index)
        return @monitorInterfaceVector.get(index)
    end
    java_overload :getMonitor, 1
    

    def getUsb(index)
        return @usbInterfaceVector.get(index)
    end
    java_overload :getUsb, 1
    

    def getVideo(index)
        return @videoInterfaceVector.get(index)
    end
    java_overload :getVideo, 1
    

    def getComponent(index)
        return @componentInterfaceVector.get(index)
    end
    java_overload :getComponent, 1
    

    def toString()
        hardwareBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @componentInterfaceVector.size()
        (0...size).each do |index|
            componentInterface = @componentInterfaceVector.get(index)
            hardwareBuffer.append(componentInterface.to_s)
            hardwareBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        end
        return hardwareBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    java_overload :compareTo, 1
    

    def difference(hardwareInterface)
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :difference, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; autoload :ComponentFactory, "org/allbinary/logic/system/hardware/components/ComponentFactory" unless const_defined?(:ComponentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :BridgeInterface, "org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface" unless const_defined?(:BridgeInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :CpuInterface, "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface" unless const_defined?(:CpuInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :EthernetInterface, "org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface" unless const_defined?(:EthernetInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :FireWireInterface, "org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface" unless const_defined?(:FireWireInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardDriveControllerInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface" unless const_defined?(:HardDriveControllerInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardDriveInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface" unless const_defined?(:HardDriveInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" unless const_defined?(:HardwareComponentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :MachineAccessControlAddressInterface, "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface" unless const_defined?(:MachineAccessControlAddressInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :MediaInterface, "org/allbinary/logic/system/hardware/components/interfaces/MediaInterface" unless const_defined?(:MediaInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :MonitorInterface, "org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface" unless const_defined?(:MonitorInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :UsbInterface, "org/allbinary/logic/system/hardware/components/interfaces/UsbInterface" unless const_defined?(:UsbInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :VideoInterface, "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface" unless const_defined?(:VideoInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end; end

