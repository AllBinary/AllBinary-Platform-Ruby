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


class LicenseInterfaceSingleton
    

    def self.getInstance()
        return LicenseInterfaceSingleton.licenseInterface
    end
    

    def self.init(licenseInterface)
        if licenseInterface != nil
            LicenseInterfaceSingleton.licenseInterface = licenseInterface
        end
    end

    def self.licenseInterface()
        return defined?(@@licenseInterface) ? @@licenseInterface : nil
    end

    def self.licenseInterface=(value)
        @@licenseInterface = value
    end
end

require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/logic/system/security/licensing/AbeNoLicense"

class LicenseInterfaceSingleton
    @@licenseInterface = AbeNoLicense.getInstance()
end

