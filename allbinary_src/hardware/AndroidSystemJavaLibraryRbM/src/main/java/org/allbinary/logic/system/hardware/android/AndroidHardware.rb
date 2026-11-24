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

require "java/lang/JavaOverload"
# require "java/io/FileReader"
# require "java/io/LineNumberReader"
require "org/allbinary/logic/system/hardware/HardwareInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Android

class AndroidHardware
    include ::Org::Allbinary::Logic::System::Hardware::HardwareInterface
    attr_accessor :logUtil, :commonStrings, :componentInterfaceVector, :PROC_BUS_INPUT_DIRECTORY, :DEVICES, :MINHARDWARE

    def jfields_org_allbinary_logic_system_hardware_android_AndroidHardware
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @componentInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @PROC_BUS_INPUT_DIRECTORY = "/proc/bus/input/"
        @DEVICES = @PROC_BUS_INPUT_DIRECTORY + "devices/"
        @MINHARDWARE = 3
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_hardware_android_AndroidHardware
        self.init(@DEVICES)
        size = @componentInterfaceVector.size()
        if size < @MINHARDWARE
            raise StandardError.new("Not Enough Data For A Valid License On Linux")
        end
    end
    

    # throws Exception
    def init(filePath)
        lineNumberReader = ::Org::Allbinary::Logic::Io::NullCloseable::NULL_CLOSEABLE
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
    java_overload :init, 1
    

    # throws Exception
    def get(filePath)
        @componentInterfaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        pciFile = FileReader.new(filePath)
        lineNumberReader = LineNumberReader.new(pciFile)
        @logUtil.putF("File Found", self, @commonStrings.CONSTRUCTOR)
        nextLine = lineNumberReader.readLine()
        while nextLine != nil
            nextLine = lineNumberReader.readLine()
            @componentInterfaceVector.add(::Org::Allbinary::Logic::System::Hardware::Components::Android::UnknownHardware.new(nextLine))
        end
        return lineNumberReader
    end
    java_overload :get, 1
    

    def getComponent(index)
        return @componentInterfaceVector.get(index)
    end
    java_overload :getComponent, 1
    

    def toString()
        stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @componentInterfaceVector.size()
        (0...size).each do |index|
            componentInterface = @componentInterfaceVector.get(index)
            stringBuilder.append(componentInterface.to_s)
            stringBuilder.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        end
        return stringBuilder.to_s
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

module ::Java; module Io; autoload :Closeable, "java/io/Closeable" unless const_defined?(:Closeable, false); end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :NullCloseable, "org/allbinary/logic/io/NullCloseable" unless const_defined?(:NullCloseable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Android; autoload :UnknownHardware, "org/allbinary/logic/system/hardware/components/android/UnknownHardware" unless const_defined?(:UnknownHardware, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" unless const_defined?(:HardwareComponentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

