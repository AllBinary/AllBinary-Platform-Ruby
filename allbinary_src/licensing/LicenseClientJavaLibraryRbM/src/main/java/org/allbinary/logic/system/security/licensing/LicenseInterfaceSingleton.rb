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


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class LicenseInterfaceSingleton
    

    def self.getInstance()
        return @@licenseInterface
    end
    

    def self.init(licenseInterface)
        if licenseInterface != nil
            @@licenseInterface = licenseInterface
        end
    end

    def self.licenseInterface()
        LicenseInterfaceSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@licenseInterface) ? @@licenseInterface : nil
    end

    def self.licenseInterface=(value)
        LicenseInterfaceSingleton.java_static_fields unless @java_static_fields_started
        @@licenseInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@licenseInterface = AbeNoLicense.getInstance()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseInterfaceSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false)
autoload :AbeNoLicense, "org/allbinary/logic/system/security/licensing/AbeNoLicense" unless const_defined?(:AbeNoLicense, false)

begin
    LicenseInterfaceSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

