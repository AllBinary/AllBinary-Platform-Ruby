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

# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/HardwareInterface"

class LinuxHardware
    include HardwareInterface
    attr_accessor :logUtil, :commonStrings, :componentInterfaceVector, :videoInterfaceVector, :hardDriveControllerInterfaceVector, :cpuInterfaceVector, :usbInterfaceVector, :ethernetInterfaceVector, :multimediaInterfaceVector, :fireWireInterfaceVector, :bridgeInterfaceVector, :hardDriveInterfaceVector, :macInterfaceVector, :monitorInterfaceVector, :NAME, :MINHARDWARE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
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
        @NAME = "Linux Hardware Profile"
        @MINHARDWARE = 5
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(path)
        initialize_fields
        self.init(path)
    end
    

    def constructor0()
        initialize_fields
        self.init(PCIFILE)
        if @componentInterfaceVector.size() < @MINHARDWARE
            raise StandardError.new("Not Enough Data For A Valid License On Linux")
        end
        cpu = Cpu.new()
        if cpu != nil
            @cpuInterfaceVector.add(cpu)
            @componentInterfaceVector.add(cpu)
        end
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
            @logUtil.putF("Hardware Data: " + self.to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def init(filePath)
        lineNumberReader = nil
        begin
            self.init(lineNumberReader, filePath)
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                @logUtil.put("Hardware Data: " + self.to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def init(lineNumberReader, filePath)
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
            pciFile = FileReader.new(filePath)
            lineNumberReader = LineNumberReader.new(pciFile)
            if lineNumberReader == nil
                fileVector = SubDirectory.getInstance().search(filePath, AbFile.createAbFile(FilePathData.getInstance().PATH_START))
                if !fileVector.isEmpty()
                    file = fileVector.get(0)
                    lineNumberReader = LineNumberReader.new(FileReader.new(file.getPath()))
                end
                if lineNumberReader == nil
                    raise StandardError.new("No Linux File Data")
                end
            end
            if lineNumberReader != nil
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                    @logUtil.putF("PCI File Found", self, @commonStrings.CONSTRUCTOR)
                end
                nextLine = lineNumberReader.readLine()
                while lineNumberReader != nil && nextLine != nil
                    if self.isNextHardware(nextLine)
                        break
                    end
                    nextLine = lineNumberReader.readLine()
                end
                while self.isNextHardware(nextLine)
                    componentData = StringMaker.new()
                    if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                        @logUtil.putF("Found Hardware Device: " + (@componentInterfaceVector.size()).to_s, self, @commonStrings.CONSTRUCTOR)
                    end
                    componentData.append(nextLine)
                    componentData.append(CommonSeps.getInstance().NEW_LINE)
                    nextLine = lineNumberReader.readLine()
                    componentType = PCComponentFactory.getInstance().getComponentType(nextLine)
                    while lineNumberReader != nil
                        componentData.append(nextLine)
                        componentData.append(CommonSeps.getInstance().NEW_LINE)
                        nextLine = lineNumberReader.readLine()
                        if nextLine == nil || self.isNextHardware(nextLine)
                            break
                        end
                    end
                    componentInterface = PCComponentFactory.getInstance().getInstance(componentType, componentData.to_s)
                    if componentInterface != nil
                        @componentInterfaceVector.add(componentInterface)
                    end
                end
            else
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                    @logUtil.putF("Could not load PCI File", self, @commonStrings.CONSTRUCTOR)
                end
            end
            lineNumberReader.close()
        ensure
            if lineNumberReader != nil
                lineNumberReader.close()
            end
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
            hardwareBuffer.append("Component ")
            hardwareBuffer.appendint(index)
            hardwareBuffer.append(": \n")
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
    

    def isNextHardware(nextLine)
        if nextLine != nil
            index = (nextLine.index("Bus") || -1)
            if index >= 0 && index < 4
                return true
            end
        end
        return false
    end
end

require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/io/file/directory/SubDirectory"
require "org/allbinary/logic/string/StringMaker"
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
require "org/allbinary/logic/system/hardware/components/linux/Cpu"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/hardware/linux/PCComponentFactory"

class LinuxHardware
    PCIFILE = "/proc/pci"
end

