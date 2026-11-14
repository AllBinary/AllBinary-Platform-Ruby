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

require "org/allbinary/logic/system/hardware/HardwareInterface"

class LinuxHardware
    include HardwareInterface
    

    def initialize()
    end
    

    def getMultimedia(index)
        raise RuntimeError.new()
    end
    

    def getBridge(index)
        raise RuntimeError.new()
    end
    

    def getCpu(index)
        raise RuntimeError.new()
    end
    

    def getEthernet(index)
        raise RuntimeError.new()
    end
    

    def getFireWire(index)
        raise RuntimeError.new()
    end
    

    def getHardDriveController(index)
        raise RuntimeError.new()
    end
    

    def getHardDrive(index)
        raise RuntimeError.new()
    end
    

    def getMachineAccessControlAddress(index)
        raise RuntimeError.new()
    end
    

    def getMonitor(index)
        raise RuntimeError.new()
    end
    

    def getUsb(index)
        raise RuntimeError.new()
    end
    

    def getVideo(index)
        raise RuntimeError.new()
    end
    

    def getComponent(index)
        raise RuntimeError.new()
    end
    

    def toString()
        return StringUtil.getInstance().EMPTY_STRING
    end
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    

    def difference(hardwareInterface)
        return StdUtil.getInstance().NULL_TABLE
    end
    

    def isNextHardware(nextLine)
        return false
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BridgeInterface, "org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface"
autoload :CpuInterface, "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface"
autoload :EthernetInterface, "org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface"
autoload :FireWireInterface, "org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface"
autoload :HardDriveControllerInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface"
autoload :HardDriveInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface"
autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
autoload :MachineAccessControlAddressInterface, "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface"
autoload :MediaInterface, "org/allbinary/logic/system/hardware/components/interfaces/MediaInterface"
autoload :MonitorInterface, "org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface"
autoload :UsbInterface, "org/allbinary/logic/system/hardware/components/interfaces/UsbInterface"
autoload :VideoInterface, "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

