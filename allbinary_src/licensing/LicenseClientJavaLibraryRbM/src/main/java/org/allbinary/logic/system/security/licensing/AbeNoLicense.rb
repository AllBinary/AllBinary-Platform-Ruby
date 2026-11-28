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

class AbeNoLicense
    include AbeLicenseInterface
    attr_accessor :serverVector

    def jfields_org_allbinary_logic_system_security_licensing_AbeNoLicense
        @serverVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_licensing_AbeNoLicense
    end
    

    def self.getInstance()
        return @@abeNoLicense
    end
    

    def hasKey()
        return false
    end
    java_overload :hasKey, 0
    

    def getKey(keyName)
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getKey, 1
    

    def getLicenseId()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getLicenseId, 0
    

    def getSpecial()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getSpecial, 0
    

    def getServers()
        return @serverVector
    end
    java_overload :getServers, 0
    

    def isValid()
        return false
    end
    java_overload :isValid, 0
    

    def getLicenseType()
        return LicenseTypeFactory.getInstance().UNKNOWN
    end
    java_overload :getLicenseType, 0

    def self.abeNoLicense()
        AbeNoLicense.java_static_fields unless @java_static_fields_started
        return defined?(@@abeNoLicense) ? @@abeNoLicense : nil
    end

    def self.abeNoLicense=(value)
        AbeNoLicense.java_static_fields unless @java_static_fields_started
        @@abeNoLicense = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@abeNoLicense = AbeNoLicense.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbeNoLicense"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :LicenseType, "org/allbinary/logic/system/security/licensing/LicenseType" unless const_defined?(:LicenseType, false)
autoload :LicenseTypeFactory, "org/allbinary/logic/system/security/licensing/LicenseTypeFactory" unless const_defined?(:LicenseTypeFactory, false)

begin
    AbeNoLicense.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

