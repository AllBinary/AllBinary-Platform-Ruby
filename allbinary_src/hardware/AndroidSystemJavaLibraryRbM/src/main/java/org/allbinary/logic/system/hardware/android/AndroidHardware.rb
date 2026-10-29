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
# package org.allbinary.logic.system.hardware.android

# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/HardwareInterface"

class AndroidHardware
    include HardwareInterface
    attr_accessor :logUtil, :commonStrings, :componentInterfaceVector, :PROC_BUS_INPUT_DIRECTORY, :DEVICES, :MINHARDWARE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @componentInterfaceVector = BasicArrayListD.new()
        @PROC_BUS_INPUT_DIRECTORY = "/proc/bus/input/"
        @DEVICES = @PROC_BUS_INPUT_DIRECTORY + "devices/"
        @MINHARDWARE = 3
    end
    

    def initialize()
        initialize_fields
        self.init(@DEVICES)
        size = @componentInterfaceVector.size()
        if size < @MINHARDWARE
            raise StandardError.new("Not Enough Data For A Valid License On Linux")
        end
    end
    

    # throws Exception
    def init(filePath)
        lineNumberReader = NullCloseable::NULL_CLOSEABLE
        begin
            lineNumberReader = self.get(filePath)
        rescue StandardError => e
            @logUtil.put("Hardware Data: " + self.to_s, self, @commonStrings.INIT, e)
            raise e
        ensure
            if lineNumberReader != nil
                lineNumberReader.close()
            end
        end
    end
    

    # throws Exception
    def get(filePath)
        @componentInterfaceVector = BasicArrayListD.new()
        pciFile = FileReader.new(filePath)
        lineNumberReader = LineNumberReader.new(pciFile)
        @logUtil.putF("File Found", self, @commonStrings.CONSTRUCTOR)
        nextLine = lineNumberReader.readLine()
        while nextLine != nil
            nextLine = lineNumberReader.readLine()
            @componentInterfaceVector.add(UnknownHardware.new(nextLine))
        end
        return lineNumberReader
    end
    

    def getComponent(index)
        return @componentInterfaceVector.get(index)
    end
    

    def toString()
        stringBuilder = StringMaker.new()
        size = @componentInterfaceVector.size()
        (0...size).each do |index|
            componentInterface = @componentInterfaceVector.get(index)
            stringBuilder.append(componentInterface.to_s)
            stringBuilder.append(CommonSeps.getInstance().NEW_LINE)
        end
        return stringBuilder.to_s
    end
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    

    def difference(hardwareInterface)
        return StdUtil.getInstance().NULL_TABLE
    end
end

require "java/io/Closeable"
require "org/allbinary/logic/io/NullCloseable"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/hardware/components/android/UnknownHardware"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

