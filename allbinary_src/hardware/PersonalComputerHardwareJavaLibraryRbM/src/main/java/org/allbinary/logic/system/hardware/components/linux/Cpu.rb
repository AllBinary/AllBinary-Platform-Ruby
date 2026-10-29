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

# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"

class Cpu
    include CpuInterface
    include HardwareComponentInterface
    attr_accessor :logUtil, :commonStrings, :CPUFILE, :cpuHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @CPUFILE = "/proc/cpuinfo"
        @cpuHashMap = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(filePath)
        initialize_fields
        self.init(filePath)
    end
    

    def constructor0()
        initialize_fields
        self.init(@CPUFILE)
    end
    

    # throws Exception
    def init(filePath)
        lineNumberReader = nil
        begin
            self.init(lineNumberReader, filePath)
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                @logUtil.put(StringMaker.new().append("Cpu Data: ").append(self.to_s).to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def init(lineNumberReader, filePath)
        begin
            fileReader = FileReader.new(filePath)
            lineNumberReader = LineNumberReader.new(fileReader)
            @cpuHashMap = StdUtil.getInstance().createHashMap()
            if lineNumberReader == nil
                fileVector = SubDirectory.getInstance().search(filePath, AbFile.createAbFile(FilePathData.getInstance().PATH_START))
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().OS)
                    @logUtil.putF(StringMaker.new().append("Cpu File BasicArrayList Size: ").appendint(fileVector.size()).to_s, self, @commonStrings.CONSTRUCTOR)
                end
                if !fileVector.isEmpty()
                    file = fileVector.get(0)
                    lineNumberReader = LineNumberReader.new(FileReader.new(file.getPath()))
                end
            end
            if lineNumberReader != nil
                nextLine = lineNumberReader.readLine()
                while lineNumberReader != nil && nextLine != nil
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
    

    def getProcessor()
        return @cpuHashMap.get(CpuInfo::PROCESSOR)
    end
    

    def getVendorId()
        return @cpuHashMap.get(CpuInfo::VENDORID)
    end
    

    def getCpuFamily()
        return @cpuHashMap.get(CpuInfo::CPUFAMILY)
    end
    

    def getModel()
        return @cpuHashMap.get(CpuInfo::MODEL)
    end
    

    def getModelName()
        return @cpuHashMap.get(CpuInfo::MODELNAME)
    end
    

    def getStepping()
        return @cpuHashMap.get(CpuInfo::STEPPING)
    end
    

    def getCpuSpeed()
        return @cpuHashMap.get(CpuInfo::CPUMHZ)
    end
    

    def getCacheSize()
        return @cpuHashMap.get(CpuInfo::CACHESIZE)
    end
    

    def compareTo(cpuInterface)
        return true
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def compareTo(componentInterface)
        return true
    end
    

    def toString()
        commonLabels = CommonLabels.getInstance()
        commonSeps = CommonSeps.getInstance()
        stringMaker = StringMaker.new()
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
    alias_method :to_s, :toString
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/io/file/directory/SubDirectory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/hardware/components/linux/CpuInfo"

