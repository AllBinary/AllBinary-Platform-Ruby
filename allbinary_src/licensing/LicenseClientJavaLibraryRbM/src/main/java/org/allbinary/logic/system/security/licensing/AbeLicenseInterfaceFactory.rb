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

# require "java/io/IOException"

class AbeLicenseInterfaceFactory
    attr_accessor :logUtil, :commonStrings, :time, :check, :checkPeriod, :abeLicenseInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @time = 0
        @check = false
        @checkPeriod = 36000000
        @abeLicenseInterface = nil
    end
    

    def self.getInstance()
        return AbeLicenseInterfaceFactory::SINGLETON
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws LicensingException
    def getLicenseInstance(abeClientInformation)
        if isTimeToGetKey()
            return self.get(abeClientInformation)
        else
            return @abeLicenseInterface
        end
    end
    

    # throws LicensingException
    def get(abeClientInformation)
        begin
            @logUtil.putF("Getting Keys", self, @commonStrings.GET)
            @abeLicenseInterface = AbeNoLicense.getInstance()
            licenseClient = AbeLicenseClient.new()
            @abeLicenseInterface = licenseClient.get(abeClientInformation)
            if @abeLicenseInterface != nil
                @logUtil.putF("Default Key: " + (@abeLicenseInterface.getKey(AbeClientInformationData.getInstance().KEY)).to_s, self, @commonStrings.GET)
            end
            return @abeLicenseInterface
        rescue IOError => e
            @logUtil.put("Licensing IO Error", self, @commonStrings.GET, e)
            raise LicensingException.new("License Server Connection Error")
        rescue StandardError => e
            @logUtil.put("Licensing Failure", self, @commonStrings.GET, e)
            raise LicensingException.new("Unknown License Failure: " + self.class.name)
        end
    end
    

    def isTimeToGetKey()
        calendar = Calendar.getInstance()
        currentTime = calendar.getTimeInMillis()
        if @abeLicenseInterface == nil || @abeLicenseInterface == AbeNoLicense.getInstance() || !@abeLicenseInterface.hasKey() || isCheck() || currentTime - @checkPeriod > @time
            @abeLicenseInterface = nil
            @time = currentTime
            return true
        else
            return false
        end
    end
    

    def setCheck(check)
        @check = check
    end
    

    def isCheck()
        return @check
    end
end

require "java/util/Calendar"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/client/AbeLicenseClient"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationData"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/logic/system/security/licensing/AbeNoLicense"
require "org/allbinary/logic/system/security/licensing/LicensingException"

class AbeLicenseInterfaceFactory
    SINGLETON = AbeLicenseInterfaceFactory.new()
end

