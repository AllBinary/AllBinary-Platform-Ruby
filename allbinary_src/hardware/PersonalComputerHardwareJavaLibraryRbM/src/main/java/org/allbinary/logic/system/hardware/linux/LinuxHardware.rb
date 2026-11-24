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

require "java/lang/JavaOverload"
# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/HardwareInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Linux

class LinuxHardware
    include ::Org::Allbinary::Logic::System::Hardware::HardwareInterface
    attr_accessor :logUtil, :commonStrings, :componentInterfaceVector, :videoInterfaceVector, :hardDriveControllerInterfaceVector, :cpuInterfaceVector, :usbInterfaceVector, :ethernetInterfaceVector, :multimediaInterfaceVector, :fireWireInterfaceVector, :bridgeInterfaceVector, :hardDriveInterfaceVector, :macInterfaceVector, :monitorInterfaceVector, :NAME, :MINHARDWARE

    def jfields_org_allbinary_logic_system_hardware_linux_LinuxHardware
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        @NAME = "Linux Hardware Profile"
        @MINHARDWARE = 5
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_system_hardware_linux_LinuxHardware_1(*args)
        when 0 then jnew_org_allbinary_logic_system_hardware_linux_LinuxHardware_0(*args)
        else raise ArgumentError, "No constructor of LinuxHardware takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_system_hardware_linux_LinuxHardware_1(path)
        jfields_org_allbinary_logic_system_hardware_linux_LinuxHardware
        self.init(path)
    end
    

    def jnew_org_allbinary_logic_system_hardware_linux_LinuxHardware_0()
        jfields_org_allbinary_logic_system_hardware_linux_LinuxHardware
        self.init(PCIFILE)
        if @componentInterfaceVector.size() < @MINHARDWARE
            raise StandardError.new("Not Enough Data For A Valid License On Linux")
        end
        cpu = ::Org::Allbinary::Logic::System::Hardware::Components::Linux::Cpu.new()
        if cpu != nil
            @cpuInterfaceVector.add(cpu)
            @componentInterfaceVector.add(cpu)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
            @logUtil.putF("Hardware Data: " + self.to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def init_j1(filePath)
        lineNumberReader = nil
        begin
            self.init(lineNumberReader, filePath)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
                @logUtil.put("Hardware Data: " + self.to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def init_j2(lineNumberReader, filePath)
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
            pciFile = FileReader.new(filePath)
            lineNumberReader = LineNumberReader.new(pciFile)
            if lineNumberReader == nil
                fileVector = ::Org::Allbinary::Logic::Io::FilePackage::Directory::SubDirectory.getInstance().search(filePath, ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance().PATH_START))
                if !fileVector.isEmpty()
                    file = fileVector.get(0)
                    lineNumberReader = LineNumberReader.new(FileReader.new(file.getPath()))
                end
                if lineNumberReader == nil
                    raise StandardError.new("No Linux File Data")
                end
            end
            if lineNumberReader != nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
                    @logUtil.putF("PCI File Found", self, @commonStrings.CONSTRUCTOR)
                end
                nextLine = lineNumberReader.readLine()
                while nextLine != nil
                    if self.isNextHardware(nextLine)
                        break
                    end
                    nextLine = lineNumberReader.readLine()
                end
                while self.isNextHardware(nextLine)
                    componentData = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
                        @logUtil.putF("Found Hardware Device: " + (@componentInterfaceVector.size()).to_s, self, @commonStrings.CONSTRUCTOR)
                    end
                    componentData.append(nextLine)
                    componentData.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
                    nextLine = lineNumberReader.readLine()
                    componentType = PCComponentFactory.getInstance().getComponentType(nextLine)
                    while true
                        componentData.append(nextLine)
                        componentData.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
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

    def init(*java_overload_args)
        return init_j1(*java_overload_args) if java_overload_args.length == 1
        return init_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method init takes #{java_overload_args.length} arguments"
    end
    

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
            hardwareBuffer.append("Component ")
            hardwareBuffer.appendint(index)
            hardwareBuffer.append(": \n")
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
    

    def isNextHardware(nextLine)
        if nextLine != nil
            index = (nextLine.index("Bus") || -1)
            if index >= 0 && index < 4
                return true
            end
        end
        return false
    end
    java_overload :isNextHardware, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:PCIFILE, "/proc/pci")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LinuxHardware"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PCIFILE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :SubDirectory, "org/allbinary/logic/io/file/directory/SubDirectory" unless const_defined?(:SubDirectory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
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
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux; autoload :Cpu, "org/allbinary/logic/system/hardware/components/linux/Cpu" unless const_defined?(:Cpu, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :PCComponentFactory, "org/allbinary/logic/system/hardware/linux/PCComponentFactory" unless const_defined?(:PCComponentFactory, false)

begin
    LinuxHardware.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

