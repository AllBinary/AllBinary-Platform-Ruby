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

require "org/allbinary/logic/system/security/licensing/ClientInformation"

# This is the information sent to the license server
class AbeClientInformation < ClientInformation
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(name, version, specialName, shortName)
        super(name, version, specialName, shortName)
        initialize_fields
    end
    

    def init()
        begin
            self.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance())
            licenseInitInfo = LicenseInitInfoUtil.getInstance().read()
            self.setLicenseId(licenseInitInfo.getLicenseId())
            self.setLicenseServers(licenseInitInfo.getServerList())
            stringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isEmpty(self.getLicenseId())
                _NONE = "No License Id"
                self.setLicenseId(_NONE)
            end
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker.new().append("Special Name: ").append(self.getSpecialName()).to_s, self, commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
end

require "org/allbinary/business/init/LicenseInitInfo"
require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/string/CommonStrings"

