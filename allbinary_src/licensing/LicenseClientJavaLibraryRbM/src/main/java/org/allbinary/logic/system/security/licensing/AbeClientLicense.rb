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
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class AbeClientLicense
    include AbeLicenseInterface
    attr_accessor :hashtable, :id, :servers, :special, :licenseType

    def jfields_org_allbinary_logic_system_security_licensing_AbeClientLicense
        @hashtable = nil unless instance_variable_defined?(:@hashtable)
        @id = nil unless instance_variable_defined?(:@id)
        @servers = nil unless instance_variable_defined?(:@servers)
        @special = nil unless instance_variable_defined?(:@special)
        @licenseType = nil unless instance_variable_defined?(:@licenseType)
    end
    

    def initialize(hashtable)
        jfields_org_allbinary_logic_system_security_licensing_AbeClientLicense
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        abeClientInformationData = AbeClientInformationData.getInstance()
        keyValue = hashtable.get(abeClientInformationData.KEY)
        if keyValue != nil
            if keyValue.is_a?(String)
                @hashtable.put(abeClientInformationData.KEY, keyValue)
            end
        end
        @id = hashtable.get(abeClientInformationData.LICENSEID)
        vector = hashtable.get(abeClientInformationData.LICENSESERVERS)
        @servers = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            @servers.add(vector.get(index))
        end
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :hasKey, 0
    

    def getKey(keyName)
        return @hashtable.get(keyName)
    end
    java_overload :getKey, 1
    

    def getLicenseId()
        return @id
    end
    java_overload :getLicenseId, 0
    

    def getServers()
        return @servers
    end
    java_overload :getServers, 0
    

    def isValid()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isEmpty(self.getKey(AbeClientInformationData.getInstance().KEY))
            return true
        end
        return false
    end
    java_overload :isValid, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def setSpecial(special)
        @special = special
    end
    java_overload :setSpecial, 1
    

    def getSpecial()
        return @special
    end
    java_overload :getSpecial, 0
    

    def getLicenseType()
        return @licenseType
    end
    java_overload :getLicenseType, 0
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AbeClientInformationData, "org/allbinary/logic/system/security/licensing/AbeClientInformationData" unless const_defined?(:AbeClientInformationData, false)
autoload :LicenseType, "org/allbinary/logic/system/security/licensing/LicenseType" unless const_defined?(:LicenseType, false)
autoload :LicenseTypeFactory, "org/allbinary/logic/system/security/licensing/LicenseTypeFactory" unless const_defined?(:LicenseTypeFactory, false)

end; end; end; end; end; end

