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
# package org.allbinary.logic.system.hardware.components.linux

require "java/lang/JavaOverload"
# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux

class Cpu
    include ::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::CpuInterface
    include ::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::HardwareComponentInterface
    attr_accessor :logUtil, :commonStrings, :CPUFILE, :cpuHashMap

    def jfields_org_allbinary_logic_system_hardware_components_linux_Cpu
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @CPUFILE = "/proc/cpuinfo"
        @cpuHashMap = nil unless instance_variable_defined?(:@cpuHashMap)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_system_hardware_components_linux_Cpu_1(*args)
        when 0 then jnew_org_allbinary_logic_system_hardware_components_linux_Cpu_0(*args)
        else raise ArgumentError, "No constructor of Cpu takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_system_hardware_components_linux_Cpu_1(filePath)
        jfields_org_allbinary_logic_system_hardware_components_linux_Cpu
        self.init(filePath)
    end
    

    def jnew_org_allbinary_logic_system_hardware_components_linux_Cpu_0()
        jfields_org_allbinary_logic_system_hardware_components_linux_Cpu
        self.init(@CPUFILE)
    end
    

    # throws Exception
    def init_j1(filePath)
        lineNumberReader = nil
        begin
            self.init(lineNumberReader, filePath)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
                @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Cpu Data: ").append(self.to_s).to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def init_j2(lineNumberReader, filePath)
        begin
            fileReader = FileReader.new(filePath)
            lineNumberReader = LineNumberReader.new(fileReader)
            @cpuHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            if lineNumberReader == nil
                fileVector = ::Org::Allbinary::Logic::Io::FilePackage::Directory::SubDirectory.getInstance().search(filePath, ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance().PATH_START))
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OS)
                    @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Cpu File BasicArrayList Size: ").appendint(fileVector.size()).to_s, self, @commonStrings.CONSTRUCTOR)
                end
                if !fileVector.isEmpty()
                    file = fileVector.get(0)
                    lineNumberReader = LineNumberReader.new(FileReader.new(file.getPath()))
                end
            end
            if lineNumberReader != nil
                nextLine = lineNumberReader.readLine()
                while nextLine != nil
                    index = (nextLine.index(":") || -1)
                    if index >= 0
                        key = nextLine[0...index]
                        valueIndex = index + 1
                        value = nextLine[valueIndex...nextLine.length]
                        if (key.index(CpuInfo::PROCESSOR.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::PROCESSOR, value)
                        end
                        if (key.index(CpuInfo::VENDORID.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::VENDORID, value)
                        end
                        if (key.index(CpuInfo::CPUFAMILY.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::CPUFAMILY, value)
                        end
                        if (key.index(CpuInfo::MODEL.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::MODEL, value)
                        end
                        if (key.index(CpuInfo::MODELNAME.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::MODELNAME, value)
                        end
                        if (key.index(CpuInfo::STEPPING.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::STEPPING, value)
                        end
                        if (key.index(CpuInfo::CPUMHZ.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::CPUMHZ, value)
                        end
                        if (key.index(CpuInfo::CACHESIZE.to_s) || -1) >= 0
                            @cpuHashMap.put(CpuInfo::CACHESIZE, value)
                        end
                    end
                    nextLine = lineNumberReader.readLine()
                end
            end
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
    

    def getProcessor()
        return @cpuHashMap.get(CpuInfo::PROCESSOR)
    end
    java_overload :getProcessor, 0
    

    def getVendorId()
        return @cpuHashMap.get(CpuInfo::VENDORID)
    end
    java_overload :getVendorId, 0
    

    def getCpuFamily()
        return @cpuHashMap.get(CpuInfo::CPUFAMILY)
    end
    java_overload :getCpuFamily, 0
    

    def getModel()
        return @cpuHashMap.get(CpuInfo::MODEL)
    end
    java_overload :getModel, 0
    

    def getModelName()
        return @cpuHashMap.get(CpuInfo::MODELNAME)
    end
    java_overload :getModelName, 0
    

    def getStepping()
        return @cpuHashMap.get(CpuInfo::STEPPING)
    end
    java_overload :getStepping, 0
    

    def getCpuSpeed()
        return @cpuHashMap.get(CpuInfo::CPUMHZ)
    end
    java_overload :getCpuSpeed, 0
    

    def getCacheSize()
        return @cpuHashMap.get(CpuInfo::CACHESIZE)
    end
    java_overload :getCacheSize, 0
    

    def compareTo_j1_1(cpuInterface)
        return true
    end
    

    def compareTo_j1_2(componentInterface)
        return true
    end

    def compareTo(*java_overload_args)
        return compareTo_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method compareTo takes #{java_overload_args.length} arguments"
    end

    def compareTo_j1(*java_overload_args)
        return compareTo_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::CpuInterface))
        return compareTo_j1_2(*java_overload_args)
    end
    

    def toString()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringMaker.append(CpuInfo::PROCESSOR.to_s).append(commonLabels.COLON_SEP).append(self.getProcessor())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::VENDORID.to_s).append(commonLabels.COLON_SEP).append(self.getVendorId())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::CPUFAMILY.to_s).append(commonLabels.COLON_SEP).append(self.getCpuFamily())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::MODEL.to_s).append(commonLabels.COLON_SEP).append(self.getModel())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::MODELNAME.to_s).append(commonLabels.COLON_SEP).append(self.getModelName())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::STEPPING.to_s).append(commonLabels.COLON_SEP).append(self.getStepping())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::CPUMHZ.to_s).append(commonLabels.COLON_SEP).append(self.getCpuSpeed())
        stringMaker.append(commonSeps.NEW_LINE)
        stringMaker.append(CpuInfo::CACHESIZE.to_s).append(commonLabels.COLON_SEP).append(self.getCacheSize())
        return stringMaker.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :SubDirectory, "org/allbinary/logic/io/file/directory/SubDirectory" unless const_defined?(:SubDirectory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :CpuInfo, "org/allbinary/logic/system/hardware/components/linux/CpuInfo" unless const_defined?(:CpuInfo, false)

end; end; end; end; end; end; end

