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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

# This is the information sent to the license server
class ClientInformation
    include AbeClientInformationInterface
    attr_accessor :operatingSystemInterface, :tsUtil, :name, :shortName, :version, :specialName, :hardSale, :licenseId, :licenseServers

    def jfields_org_allbinary_logic_system_security_licensing_ClientInformation
        @operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::NoOperatingSystem::NO_OPERATING_SYSTEM
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @shortName = nil unless instance_variable_defined?(:@shortName)
        @version = nil unless instance_variable_defined?(:@version)
        @specialName = nil unless instance_variable_defined?(:@specialName)
        @hardSale = true
        @licenseId = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @licenseServers = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
    end
    

    def initialize(name, version, specialName, shortName)
        jfields_org_allbinary_logic_system_security_licensing_ClientInformation
        @name = name
        @version = version
        @specialName = specialName
        @shortName = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(shortName).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).append(version).to_s
        self.init()
    end
    

    def init()
    end
    java_overload :init, 0
    

    def getOperatingSystemInterface()
        return @operatingSystemInterface
    end
    java_overload :getOperatingSystemInterface, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getSpecialName()
        return @specialName
    end
    java_overload :getSpecialName, 0
    

    def getVersion()
        return @version
    end
    java_overload :getVersion, 0
    

    def getLicenseId()
        return @licenseId
    end
    java_overload :getLicenseId, 0
    

    def getLicenseServers()
        return @licenseServers
    end
    java_overload :getLicenseServers, 0
    

    def getLicenseServer(index)
        return @licenseServers.objectArray[index]
    end
    java_overload :getLicenseServer, 1
    

    def getNumberOfLicenseServers()
        return @licenseServers.size()
    end
    java_overload :getNumberOfLicenseServers, 0
    

    def toHashtable()
        abeClientInformationData = AbeClientInformationData.getInstance()
        genericOperatingSystem = self.getOperatingSystemInterface()
        clientInfoHashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        clientInfoHashtable.put(abeClientInformationData.NAME, @name)
        clientInfoHashtable.put(abeClientInformationData.VERSION, @version)
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, @specialName)
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, self.getLicenseId())
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName())
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch())
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion())
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.to_s)
        hardwareInterface = ::Org::Allbinary::Logic::System::Hardware::SystemHardwareFactory.getInstance().getInstance(genericOperatingSystem)
        hardwareString = hardwareInterface.to_s
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString)
        return clientInfoHashtable
    end
    java_overload :toHashtable, 0
    

    def isSameId(alicenseId)
        if @tsUtil.compareTo(self.getLicenseId(), alicenseId) == 0
            return true
        else
            return false
        end
    end
    java_overload :isSameId, 1
    

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
    java_overload :isLargerOrDifferentServerList, 1
    

    def setHardSale(hardSale)
        @hardSale = hardSale
    end
    java_overload :setHardSale, 1
    

    def isHardSale()
        return @hardSale
    end
    java_overload :isHardSale, 0
    

    def setOperatingSystemInterface(operatingSystemInterface)
        @operatingSystemInterface = operatingSystemInterface
    end
    java_overload :setOperatingSystemInterface, 1
    

    def setLicenseId(licenseId)
        @licenseId = licenseId
    end
    java_overload :setLicenseId, 1
    

    def setLicenseServers(licenseServers)
        @licenseServers = licenseServers
    end
    java_overload :setLicenseServers, 1
    

    def toShortString()
        return @shortName
    end
    java_overload :toShortString, 0
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; autoload :HardwareInterface, "org/allbinary/logic/system/hardware/HardwareInterface" unless const_defined?(:HardwareInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; autoload :SystemHardwareFactory, "org/allbinary/logic/system/hardware/SystemHardwareFactory" unless const_defined?(:SystemHardwareFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem" unless const_defined?(:NoOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :AbeClientInformationData, "org/allbinary/logic/system/security/licensing/AbeClientInformationData" unless const_defined?(:AbeClientInformationData, false)

end; end; end; end; end; end

