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
    

    def initialize()
    end
    

    def getMultimedia(index)
        raise RuntimeError.new()
    end
    java_overload :getMultimedia, 1
    

    def getBridge(index)
        raise RuntimeError.new()
    end
    java_overload :getBridge, 1
    

    def getCpu(index)
        raise RuntimeError.new()
    end
    java_overload :getCpu, 1
    

    def getEthernet(index)
        raise RuntimeError.new()
    end
    java_overload :getEthernet, 1
    

    def getFireWire(index)
        raise RuntimeError.new()
    end
    java_overload :getFireWire, 1
    

    def getHardDriveController(index)
        raise RuntimeError.new()
    end
    java_overload :getHardDriveController, 1
    

    def getHardDrive(index)
        raise RuntimeError.new()
    end
    java_overload :getHardDrive, 1
    

    def getMachineAccessControlAddress(index)
        raise RuntimeError.new()
    end
    java_overload :getMachineAccessControlAddress, 1
    

    def getMonitor(index)
        raise RuntimeError.new()
    end
    java_overload :getMonitor, 1
    

    def getUsb(index)
        raise RuntimeError.new()
    end
    java_overload :getUsb, 1
    

    def getVideo(index)
        raise RuntimeError.new()
    end
    java_overload :getVideo, 1
    

    def getComponent(index)
        raise RuntimeError.new()
    end
    java_overload :getComponent, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
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
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end; end

