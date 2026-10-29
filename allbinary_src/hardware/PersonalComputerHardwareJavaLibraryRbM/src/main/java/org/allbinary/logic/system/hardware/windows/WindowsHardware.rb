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

require "org/allbinary/logic/system/hardware/HardwareInterface"

class WindowsHardware
    include HardwareInterface
    attr_accessor :componentInterfaceVector, :videoInterfaceVector, :hardDriveControllerInterfaceVector, :cpuInterfaceVector, :usbInterfaceVector, :ethernetInterfaceVector, :multimediaInterfaceVector, :fireWireInterfaceVector, :bridgeInterfaceVector, :hardDriveInterfaceVector, :macInterfaceVector, :monitorInterfaceVector, :NAME, :MINHARDWARE, :componentFactory

    def initialize_fields
        @componentInterfaceVector = nil
        @videoInterfaceVector = nil
        @hardDriveControllerInterfaceVector = nil
        @cpuInterfaceVector = nil
        @usbInterfaceVector = nil
        @ethernetInterfaceVector = nil
        @multimediaInterfaceVector = nil
        @fireWireInterfaceVector = nil
        @bridgeInterfaceVector = nil
        @hardDriveInterfaceVector = nil
        @macInterfaceVector = nil
        @monitorInterfaceVector = nil
        @NAME = "Windows Hardware Profile"
        @MINHARDWARE = 0
        @componentFactory = ComponentFactory.getInstance()
    end
    

    def initialize()
        initialize_fields
        begin
            @componentInterfaceVector = BasicArrayListD.new()
            @videoInterfaceVector = BasicArrayListD.new()
            @hardDriveControllerInterfaceVector = BasicArrayListD.new()
            @cpuInterfaceVector = BasicArrayListD.new()
            @usbInterfaceVector = BasicArrayListD.new()
            @ethernetInterfaceVector = BasicArrayListD.new()
            @multimediaInterfaceVector = BasicArrayListD.new()
            @fireWireInterfaceVector = BasicArrayListD.new()
            @bridgeInterfaceVector = BasicArrayListD.new()
            @hardDriveInterfaceVector = BasicArrayListD.new()
            @macInterfaceVector = BasicArrayListD.new()
            @monitorInterfaceVector = BasicArrayListD.new()
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
    

    def getMultimedia(index)
        return @multimediaInterfaceVector.get(index)
    end
    

    def getBridge(index)
        return @bridgeInterfaceVector.get(index)
    end
    

    def getCpu(index)
        return @cpuInterfaceVector.get(index)
    end
    

    def getEthernet(index)
        return @ethernetInterfaceVector.get(index)
    end
    

    def getFireWire(index)
        return @fireWireInterfaceVector.get(index)
    end
    

    def getHardDriveController(index)
        return @hardDriveControllerInterfaceVector.get(index)
    end
    

    def getHardDrive(index)
        return @hardDriveInterfaceVector.get(index)
    end
    

    def getMachineAccessControlAddress(index)
        return @macInterfaceVector.get(index)
    end
    

    def getMonitor(index)
        return @monitorInterfaceVector.get(index)
    end
    

    def getUsb(index)
        return @usbInterfaceVector.get(index)
    end
    

    def getVideo(index)
        return @videoInterfaceVector.get(index)
    end
    

    def getComponent(index)
        return @componentInterfaceVector.get(index)
    end
    

    def toString()
        hardwareBuffer = StringMaker.new()
        size = @componentInterfaceVector.size()
        (0...size).each do |index|
            componentInterface = @componentInterfaceVector.get(index)
            hardwareBuffer.append(componentInterface.to_s)
            hardwareBuffer.append(CommonSeps.getInstance().NEW_LINE)
        end
        return hardwareBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    

    def difference(hardwareInterface)
        return StdUtil.getInstance().NULL_TABLE
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/hardware/components/ComponentFactory"
require "org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/MediaInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/UsbInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/ABHashtable"

