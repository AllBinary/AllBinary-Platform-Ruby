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
# package org.allbinary.logic.system.security.licensing

require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

# This is the information sent to the license server
class ClientInformation
    include AbeClientInformationInterface
    attr_accessor :operatingSystemInterface, :tsUtil, :name, :shortName, :version, :specialName, :hardSale, :licenseId, :licenseServers

    def initialize_fields
        @operatingSystemInterface = NoOperatingSystem::NO_OPERATING_SYSTEM
        @tsUtil = TsUtil.getInstance()
        @name = nil
        @shortName = nil
        @version = nil
        @specialName = nil
        @hardSale = true
        @licenseId = StringUtil.getInstance().EMPTY_STRING
        @licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance()
    end
    

    def initialize(name, version, specialName, shortName)
        initialize_fields
        @name = name
        @version = version
        @specialName = specialName
        @shortName = StringMaker.new().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).to_s
        self.init()
    end
    

    def init()
    end
    

    def getOperatingSystemInterface()
        return @operatingSystemInterface
    end
    

    def getName()
        return @name
    end
    

    def getSpecialName()
        return @specialName
    end
    

    def getVersion()
        return @version
    end
    

    def getLicenseId()
        return @licenseId
    end
    

    def getLicenseServers()
        return @licenseServers
    end
    

    def getLicenseServer(index)
        return @licenseServers.objectArray[index]
    end
    

    def getNumberOfLicenseServers()
        return @licenseServers.size()
    end
    

    def toHashtable()
        abeClientInformationData = AbeClientInformationData.getInstance()
        genericOperatingSystem = self.getOperatingSystemInterface()
        clientInfoHashtable = StdUtil.getInstance().createHashtable()
        clientInfoHashtable.put(abeClientInformationData.NAME, @name)
        clientInfoHashtable.put(abeClientInformationData.VERSION, @version)
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, @specialName)
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, self.getLicenseId())
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName())
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch())
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion())
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.to_s)
        hardwareInterface = SystemHardwareFactory.getInstance().getInstance(genericOperatingSystem)
        hardwareString = hardwareInterface.to_s
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString)
        return clientInfoHashtable
    end
    

    def isSameId(alicenseId)
        if @tsUtil.compareTo(self.getLicenseId(), alicenseId) == 0
            return true
        else
            return false
        end
    end
    

    def isLargerOrDifferentServerList(list)
        size = list.size() - 1
        currentSize = @licenseServers.size() - 1
        if size > currentSize
            return true
        end
        (size).step(0, -(1)) do |index|
            newServerName = list.objectArray[index]
            (currentSize).step(0, -(1)) do |index2|
                nextOldServerName = @licenseServers.objectArray[index]
                if @tsUtil.compareTo(newServerName, nextOldServerName) != 0
                    return true
                end
            end
        end
        return false
    end
    

    def setHardSale(hardSale)
        @hardSale = hardSale
    end
    

    def isHardSale()
        return @hardSale
    end
    

    def setOperatingSystemInterface(operatingSystemInterface)
        @operatingSystemInterface = operatingSystemInterface
    end
    

    def setLicenseId(licenseId)
        @licenseId = licenseId
    end
    

    def setLicenseServers(licenseServers)
        @licenseServers = licenseServers
    end
    

    def toShortString()
        return @shortName
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/hardware/HardwareInterface"
require "org/allbinary/logic/system/hardware/SystemHardwareFactory"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/NoOperatingSystem"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationData"

