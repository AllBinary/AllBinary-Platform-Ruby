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

class AbeClientLicense
    include AbeLicenseInterface
    attr_accessor :hashtable, :id, :servers, :special, :licenseType

    def initialize_fields
        @hashtable = nil
        @id = nil
        @servers = nil
        @special = nil
        @licenseType = nil
    end
    

    def initialize(hashtable)
        initialize_fields
        @hashtable = StdUtil.getInstance().createHashtable()
        abeClientInformationData = AbeClientInformationData.getInstance()
        keyValue = hashtable.get(abeClientInformationData.KEY)
        if keyValue != nil
            if keyValue.is_a?(String)
                @hashtable.put(abeClientInformationData.KEY, keyValue)
            end
        end
        @id = hashtable.get(abeClientInformationData.LICENSEID)
        vector = hashtable.get(abeClientInformationData.LICENSESERVERS)
        @servers = BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            @servers.add(vector.get(index))
        end
        stringUtil = StringUtil.getInstance()
        self.setSpecial(stringUtil.getNonNull(hashtable.get(abeClientInformationData.SPECIAL)))
        licenseTypeString = stringUtil.getNonNull(hashtable.get(abeClientInformationData.LICENSE_TYPE))
        @licenseType = LicenseTypeFactory.getInstance().getInstance(licenseTypeString)
    end
    

    def self.hasRequiredKeys(resultHashtable)
        abeClientInformationData = AbeClientInformationData.getInstance()
        if resultHashtable.containsKey(abeClientInformationData.LICENSEID) && resultHashtable.containsKey(abeClientInformationData.LICENSESERVERS) && resultHashtable.containsKey(abeClientInformationData.KEY) && resultHashtable.containsKey(abeClientInformationData.LICENSE_TYPE)
            return true
        else
            return false
        end
    end
    

    def hasKey()
        return self.isValid()
    end
    

    def getKey(keyName)
        return @hashtable.get(keyName)
    end
    

    def getLicenseId()
        return @id
    end
    

    def getServers()
        return @servers
    end
    

    def isValid()
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isEmpty(self.getKey(AbeClientInformationData.getInstance().KEY))
            return true
        end
        return false
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        _BREAK = "<br/>"
        stringBuffer.append("License Id: ")
        stringBuffer.append(self.getLicenseId())
        stringBuffer.append(_BREAK)
        stringBuffer.append("Is Valid: ")
        stringBuffer.appendboolean(self.isValid())
        stringBuffer.append(_BREAK)
        stringBuffer.append("Keys: ")
        stringBuffer.append(@hashtable.to_s)
        stringBuffer.append(_BREAK)
        serverVector = self.getServers()
        size = serverVector.size()
        (0...size).each do |index|
            nextServerString = serverVector.get(index)
            stringBuffer.append("Server: ")
            stringBuffer.append(nextServerString)
            stringBuffer.append(_BREAK)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def setSpecial(special)
        @special = special
    end
    

    def getSpecial()
        return @special
    end
    

    def getLicenseType()
        return @licenseType
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationData"
require "org/allbinary/logic/system/security/licensing/LicenseType"
require "org/allbinary/logic/system/security/licensing/LicenseTypeFactory"

