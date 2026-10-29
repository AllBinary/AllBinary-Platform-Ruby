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

require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"

class AbeNoLicense
    include AbeLicenseInterface
    attr_accessor :serverVector

    def initialize_fields
        @serverVector = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return AbeNoLicense.abeNoLicense
    end
    

    def hasKey()
        return false
    end
    

    def getKey(keyName)
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def getLicenseId()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def getSpecial()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def getServers()
        return @serverVector
    end
    

    def isValid()
        return false
    end
    

    def getLicenseType()
        return LicenseTypeFactory.getInstance().UNKNOWN
    end

    def self.abeNoLicense()
        return defined?(@@abeNoLicense) ? @@abeNoLicense : nil
    end

    def self.abeNoLicense=(value)
        @@abeNoLicense = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/system/security/licensing/LicenseType"
require "org/allbinary/logic/system/security/licensing/LicenseTypeFactory"

class AbeNoLicense
    @@abeNoLicense = AbeNoLicense.new()
end

